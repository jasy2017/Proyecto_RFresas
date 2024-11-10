# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz")
  message(FATAL_ERROR "File not found: /home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("4e8365c807e1ba7814234460d30ef939" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz'")

file("MD5" "/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz" actual_value)

if(NOT "${actual_value}" STREQUAL "4e8365c807e1ba7814234460d30ef939")
  message(FATAL_ERROR "error: MD5 hash of
  /home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz
does not match expected value
  expected: '4e8365c807e1ba7814234460d30ef939'
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
