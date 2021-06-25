# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "visual_slam: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ivisual_slam:/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(visual_slam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" NAME_WE)
add_custom_target(_visual_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visual_slam" "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" "sensor_msgs/LaserScan:std_msgs/Header"
)

get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" NAME_WE)
add_custom_target(_visual_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visual_slam" "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" "visual_slam/ObjectLocation:sensor_msgs/LaserScan:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visual_slam
)
_generate_msg_cpp(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg"
  "${MSG_I_FLAGS}"
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visual_slam
)

### Generating Services

### Generating Module File
_generate_module_cpp(visual_slam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visual_slam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(visual_slam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(visual_slam_generate_messages visual_slam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_cpp _visual_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_cpp _visual_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visual_slam_gencpp)
add_dependencies(visual_slam_gencpp visual_slam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visual_slam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visual_slam
)
_generate_msg_eus(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg"
  "${MSG_I_FLAGS}"
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visual_slam
)

### Generating Services

### Generating Module File
_generate_module_eus(visual_slam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visual_slam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(visual_slam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(visual_slam_generate_messages visual_slam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_eus _visual_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_eus _visual_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visual_slam_geneus)
add_dependencies(visual_slam_geneus visual_slam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visual_slam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visual_slam
)
_generate_msg_lisp(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg"
  "${MSG_I_FLAGS}"
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visual_slam
)

### Generating Services

### Generating Module File
_generate_module_lisp(visual_slam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visual_slam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(visual_slam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(visual_slam_generate_messages visual_slam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_lisp _visual_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_lisp _visual_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visual_slam_genlisp)
add_dependencies(visual_slam_genlisp visual_slam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visual_slam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visual_slam
)
_generate_msg_nodejs(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg"
  "${MSG_I_FLAGS}"
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visual_slam
)

### Generating Services

### Generating Module File
_generate_module_nodejs(visual_slam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visual_slam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(visual_slam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(visual_slam_generate_messages visual_slam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_nodejs _visual_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_nodejs _visual_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visual_slam_gennodejs)
add_dependencies(visual_slam_gennodejs visual_slam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visual_slam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visual_slam
)
_generate_msg_py(visual_slam
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg"
  "${MSG_I_FLAGS}"
  "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visual_slam
)

### Generating Services

### Generating Module File
_generate_module_py(visual_slam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visual_slam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(visual_slam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(visual_slam_generate_messages visual_slam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocation.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_py _visual_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/julian/robot_assignment_ws/src/turtlebot-detect-slam/msg/ObjectLocations.msg" NAME_WE)
add_dependencies(visual_slam_generate_messages_py _visual_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visual_slam_genpy)
add_dependencies(visual_slam_genpy visual_slam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visual_slam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visual_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visual_slam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(visual_slam_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(visual_slam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visual_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visual_slam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(visual_slam_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(visual_slam_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visual_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visual_slam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(visual_slam_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(visual_slam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visual_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visual_slam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(visual_slam_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(visual_slam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visual_slam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visual_slam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visual_slam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(visual_slam_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(visual_slam_generate_messages_py std_msgs_generate_messages_py)
endif()
