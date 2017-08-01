# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pingpong: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipingpong:/home/pepe/melendez_ws/src/pingpong/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pingpong_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg" NAME_WE)
add_custom_target(_pingpong_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pingpong" "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pingpong
  "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pingpong
)

### Generating Services

### Generating Module File
_generate_module_cpp(pingpong
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pingpong
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pingpong_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pingpong_generate_messages pingpong_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg" NAME_WE)
add_dependencies(pingpong_generate_messages_cpp _pingpong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pingpong_gencpp)
add_dependencies(pingpong_gencpp pingpong_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pingpong_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pingpong
  "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pingpong
)

### Generating Services

### Generating Module File
_generate_module_lisp(pingpong
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pingpong
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pingpong_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pingpong_generate_messages pingpong_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg" NAME_WE)
add_dependencies(pingpong_generate_messages_lisp _pingpong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pingpong_genlisp)
add_dependencies(pingpong_genlisp pingpong_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pingpong_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pingpong
  "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pingpong
)

### Generating Services

### Generating Module File
_generate_module_py(pingpong
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pingpong
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pingpong_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pingpong_generate_messages pingpong_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pepe/melendez_ws/src/pingpong/msg/Kinematics.msg" NAME_WE)
add_dependencies(pingpong_generate_messages_py _pingpong_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pingpong_genpy)
add_dependencies(pingpong_genpy pingpong_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pingpong_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pingpong)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pingpong
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pingpong_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pingpong_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pingpong)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pingpong
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pingpong_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pingpong_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pingpong)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pingpong\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pingpong
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pingpong_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pingpong_generate_messages_py geometry_msgs_generate_messages_py)
endif()
