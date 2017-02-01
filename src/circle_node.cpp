#include "ros/ros.h"
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
#include "circle/EllipseDetectorLX.h"
#include <fstream>
#include <ctime>
#include <unistd.h>
#include <time.h>
#include <iostream>
#include <sys/time.h>
#include <cv_bridge/cv_bridge.h>
#include <detecter/CircleTarget.h>
#include "sslib.h"
int use_resize_flag_=0;
int reimg_width_=640;
int reimg_height_=480;
int showimg_result_flag_=1;
using namespace std;
using namespace cv;
CEllipseDetectorLX yaed;
location loc;
VideoCapture capp;
sstimer timer;
image_transport::Publisher* ppub;
ros::Publisher*             ppb;
detecter::CircleTarget target;
void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
    try
    {
        //When receive activation signal, start subscribe camera/image topic;
        if(target.circle_activate == 1){
		capp=yaed.opencamera();
		Mat3b image  = cv_bridge::toCvShare(msg, "bgr8")->image;
		Mat3b result;
		Mat3b image2;
		if (use_resize_flag_)
		{
		    //resize
		    cv::Size size(reimg_width_,reimg_height_);
		    cv::resize(image, image2, size);
		    result = yaed.Onvideotracking(image2);
		}
		else
		{
		    result = yaed.Onvideotracking(image);
		}
		loc=yaed.locations();
		//ROS_INFO("location: %d,%d",loc.xaxis,loc.yaxis);

		//geometry_msgs::Point point;
		//detecter::CircleTarget target;
		target.header.stamp=ros::Time::now();
		target.header.frame_id="camera";
		target.tar.x=loc.xaxis;
		target.tar.y=loc.yaxis;
		if (use_resize_flag_)
		{
		    target.image_height = image2.size().height;
		    target.image_width  = image2.size().width;
		}
		else
		{
		    target.image_height = image.size().height;
		    target.image_width  = image.size().width;
		}
		if(target.tar.x!=0&&target.tar.y!=0)
		    target.state=1; //find target
		else
		    target.state=0; //not find target
		ppb->publish(target);

		if (showimg_result_flag_)
		{
		    sensor_msgs::ImagePtr imagemsg;
		    imagemsg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", result).toImageMsg();
		    ppub->publish(imagemsg);
		}
          }
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
}


int main(int argc, char** argv)
{
    ros::init(argc, argv, "circle_node");
    ros::NodeHandle n;

    n.getParam("/circle_node/detecter/circle_resize_flag", use_resize_flag_);
    n.getParam("/circle_node/detecter/circle_resize_width", reimg_width_);
    n.getParam("/circle_node/detecter/circle_resize_height", reimg_height_);
    n.getParam("/circle_node/detecter/circle_show_image_result_flag", showimg_result_flag_);

    image_transport::ImageTransport it(n);
    image_transport::Subscriber sub = it.subscribe("camera/image", 1, imageCallback);

    ros::NodeHandle nh;
    image_transport::ImageTransport itt(nh);
    image_transport::Publisher pub = itt.advertise("/detecter/circle_result_image", 1);
    ppub=&pub;

    ros::NodeHandle nhp;
    ros::Publisher pb = nhp.advertise<detecter::CircleTarget>("/detecter/circle_target_point", 1);
    ppb=&pb;

    //When receive termination signal, stop subscribe camera/image topic;
    if(target.circle_terminate == 1){    
    ros::spin();
    cv::destroyWindow("Output");
}
	return 0;	   
}
