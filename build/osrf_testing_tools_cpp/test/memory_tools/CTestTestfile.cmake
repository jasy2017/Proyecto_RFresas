# CMake generated Testfile for 
# Source directory: /home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/memory_tools
# Build directory: /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/test/memory_tools
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_memory_tools "/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/src/test_runner/test_runner" "--env" "LD_PRELOAD=/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/src/memory_tools/libmemory_tools_interpose.so" "--" "/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/test/memory_tools/test_memory_tools")
set_tests_properties(test_memory_tools PROPERTIES  _BACKTRACE_TRIPLES "/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/memory_tools/CMakeLists.txt;11;add_test;/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/memory_tools/CMakeLists.txt;0;")
