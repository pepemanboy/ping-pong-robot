execute_process(COMMAND "/home/pepe/melendez_ws/build/kinova-ros/kinova_demo/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pepe/melendez_ws/build/kinova-ros/kinova_demo/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
