# CMake generated Testfile for 
# Source directory: /home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/test_runner
# Build directory: /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/test/test_runner
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_parse_environment_variable "/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/test/test_runner/test_parse_environment_variable")
set_tests_properties(test_parse_environment_variable PROPERTIES  _BACKTRACE_TRIPLES "/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/test_runner/CMakeLists.txt;5;add_test;/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/test_runner/CMakeLists.txt;0;")
add_test(test_test_runner "/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/src/test_runner/test_runner" "--env" "FOO=bar" "PING=pong" "--append-env" "FOO=baz" "--" "/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/test/test_runner/assert_env_vars" "--env" "FOO=bar:baz" "PING=pong")
set_tests_properties(test_test_runner PROPERTIES  _BACKTRACE_TRIPLES "/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/test_runner/CMakeLists.txt;16;add_test;/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/test/test_runner/CMakeLists.txt;0;")
