cmake_minimum_required(VERSION 2.8.3)
project(pingpong)

#find packages

find_package(catkin REQUIRED
             COMPONENTS
             roscpp
             moveit_core
             moveit_ros_planning
             moveit_ros_planning_interface
             pluginlib
             cmake_modules
             geometric_shapes
             message_generation
)

find_package(Boost REQUIRED system filesystem date_time thread)

find_package(Eigen REQUIRED)

find_package(kinova_driver REQUIRED)

find_package(OpenCV)

add_message_files(FILES Kinematics.msg)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

#build
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(SYSTEM ${Boost_INCLUDE_DIR} ${EIGEN_INCLUDE_DIRS})
include_directories(${catkin_INCLUDE_DIRS})
link_directories(${catkin_LIBRARY_DIRS})

include_directories(${kinova_driver_INCLUDE_DIRS})

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    moveit_core
    moveit_ros_planning_interface
    interactive_markers
    message_runtime
)



#targets

add_executable(robot src/robot.cpp)
target_link_libraries(robot ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${kinova_driver_LIBRARIES})
install(TARGETS robot DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

add_executable(ball src/ball.cpp)
target_link_libraries(ball ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${kinova_driver_LIBRARIES})
install(TARGETS ball DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

add_executable(vision src/vision.cpp include/ball.h)
target_link_libraries(vision ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${kinova_driver_LIBRARIES} ${OpenCV_LIBRARIES})
install(TARGETS vision DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

add_executable(interceptor src/interceptor.cpp include/ball.h)
target_link_libraries(interceptor ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${kinova_driver_LIBRARIES} ${OpenCV_LIBRARIES})
install(TARGETS interceptor DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
