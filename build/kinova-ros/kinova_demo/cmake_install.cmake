# Install script for directory: /home/pepe/melendez_ws/src/kinova-ros/kinova_demo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pepe/melendez_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/pepe/melendez_ws/build/kinova-ros/kinova_demo/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pepe/melendez_ws/build/kinova-ros/kinova_demo/catkin_generated/installspace/kinova_demo.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_demo/cmake" TYPE FILE FILES
    "/home/pepe/melendez_ws/build/kinova-ros/kinova_demo/catkin_generated/installspace/kinova_demoConfig.cmake"
    "/home/pepe/melendez_ws/build/kinova-ros/kinova_demo/catkin_generated/installspace/kinova_demoConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kinova_demo" TYPE FILE FILES "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/kinova_demo" TYPE PROGRAM FILES
    "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/nodes/kinova_demo/pose_action_client.py"
    "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/nodes/kinova_demo/fingers_action_client.py"
    "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/nodes/kinova_demo/joints_action_client.py"
    "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/nodes/kinova_demo/testActionSvr.py"
    "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/nodes/kinova_demo/gravity_compensated_mode.py"
    "/home/pepe/melendez_ws/src/kinova-ros/kinova_demo/nodes/kinova_demo/run_COMParameters_estimation.py"
    )
endif()

