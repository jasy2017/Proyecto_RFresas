# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp

# Include any dependencies generated for this target.
include googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/flags.make

googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/flags.make
googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: googletest-1.10.0.1-extracted/googletest-1.10.0.1-src/googletest/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-src/googletest/src/gtest-all.cc

googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-src/googletest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-src/googletest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

lib/libgtest.a: googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
lib/libgtest.a: googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/build.make
lib/libgtest.a: googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../lib/libgtest.a"
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/build: lib/libgtest.a

.PHONY : googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/build

googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/clean:
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/clean

googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/depend:
	cd /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jesus/Desktop/ros2_ws/src/osrf/osrf_testing_tools_cpp/osrf_testing_tools_cpp /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-src/googletest /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest /home/jesus/Desktop/ros2_ws/build/osrf_testing_tools_cpp/googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googletest-1.10.0.1-extracted/googletest-1.10.0.1-build/googletest/CMakeFiles/gtest.dir/depend
