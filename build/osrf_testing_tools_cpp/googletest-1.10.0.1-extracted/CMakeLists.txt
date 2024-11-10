# Based on recommendation on how to integrate googletest into a CMake project:
#   https://github.com/google/googletest/tree/master/googletest#incorporating-into-an-existing-cmake-project

cmake_minimum_required(VERSION 2.8.12)

project(googletest-download NONE)

include(ExternalProject)
ExternalProject_Add(googletest
  URL               "/home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp/vendor/google/googletest/release-1.10.0.1.tar.gz"
  URL_MD5           "4e8365c807e1ba7814234460d30ef939"
  SOURCE_DIR        "${CMAKE_BINARY_DIR}/googletest-1.10.0.1-src"
  BINARY_DIR        "${CMAKE_BINARY_DIR}/googletest-1.10.0.1-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
  LOG_DOWNLOAD      OFF
  LOG_UPDATE        OFF
  LOG_CONFIGURE     OFF
  LOG_BUILD         OFF
  LOG_TEST          OFF
  LOG_INSTALL       OFF
)
