# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "detecter: 2 messages, 0 services")

set(MSG_I_FLAGS "-Idetecter:/home/zh/catkin_ws/src/detecter/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(detecter_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg" NAME_WE)
add_custom_target(_detecter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "detecter" "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg" NAME_WE)
add_custom_target(_detecter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "detecter" "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg" "std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(detecter
  "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detecter
)
_generate_msg_cpp(detecter
  "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detecter
)

### Generating Services

### Generating Module File
_generate_module_cpp(detecter
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detecter
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(detecter_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(detecter_generate_messages detecter_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg" NAME_WE)
add_dependencies(detecter_generate_messages_cpp _detecter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg" NAME_WE)
add_dependencies(detecter_generate_messages_cpp _detecter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detecter_gencpp)
add_dependencies(detecter_gencpp detecter_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detecter_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(detecter
  "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detecter
)
_generate_msg_lisp(detecter
  "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detecter
)

### Generating Services

### Generating Module File
_generate_module_lisp(detecter
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detecter
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(detecter_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(detecter_generate_messages detecter_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg" NAME_WE)
add_dependencies(detecter_generate_messages_lisp _detecter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg" NAME_WE)
add_dependencies(detecter_generate_messages_lisp _detecter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detecter_genlisp)
add_dependencies(detecter_genlisp detecter_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detecter_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(detecter
  "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detecter
)
_generate_msg_py(detecter
  "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detecter
)

### Generating Services

### Generating Module File
_generate_module_py(detecter
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detecter
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(detecter_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(detecter_generate_messages detecter_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/CircleTarget.msg" NAME_WE)
add_dependencies(detecter_generate_messages_py _detecter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zh/catkin_ws/src/detecter/msg/RectangleTarget.msg" NAME_WE)
add_dependencies(detecter_generate_messages_py _detecter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(detecter_genpy)
add_dependencies(detecter_genpy detecter_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS detecter_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detecter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/detecter
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(detecter_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(detecter_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detecter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/detecter
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(detecter_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(detecter_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detecter)
  install(CODE "execute_process(COMMAND \"/home/zh/anaconda2/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detecter\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/detecter
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(detecter_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(detecter_generate_messages_py geometry_msgs_generate_messages_py)
