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
CMAKE_SOURCE_DIR = /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build

# Include any dependencies generated for this target.
include test/CMakeFiles/mmk_test_cxx.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/mmk_test_cxx.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/mmk_test_cxx.dir/flags.make

test/CMakeFiles/mmk_test_cxx.dir/test.cpp.o: test/CMakeFiles/mmk_test_cxx.dir/flags.make
test/CMakeFiles/mmk_test_cxx.dir/test.cpp.o: /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/mmk_test_cxx.dir/test.cpp.o"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -O0 -o CMakeFiles/mmk_test_cxx.dir/test.cpp.o -c /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/test.cpp

test/CMakeFiles/mmk_test_cxx.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mmk_test_cxx.dir/test.cpp.i"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -O0 -E /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/test.cpp > CMakeFiles/mmk_test_cxx.dir/test.cpp.i

test/CMakeFiles/mmk_test_cxx.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mmk_test_cxx.dir/test.cpp.s"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -O0 -S /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/test.cpp -o CMakeFiles/mmk_test_cxx.dir/test.cpp.s

# Object files for target mmk_test_cxx
mmk_test_cxx_OBJECTS = \
"CMakeFiles/mmk_test_cxx.dir/test.cpp.o"

# External object files for target mmk_test_cxx
mmk_test_cxx_EXTERNAL_OBJECTS =

test/mmk_test_cxx: test/CMakeFiles/mmk_test_cxx.dir/test.cpp.o
test/mmk_test_cxx: test/CMakeFiles/mmk_test_cxx.dir/build.make
test/mmk_test_cxx: libmimick.a
test/mmk_test_cxx: test/libfoo.so
test/mmk_test_cxx: test/CMakeFiles/mmk_test_cxx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mmk_test_cxx"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmk_test_cxx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/mmk_test_cxx.dir/build: test/mmk_test_cxx

.PHONY : test/CMakeFiles/mmk_test_cxx.dir/build

test/CMakeFiles/mmk_test_cxx.dir/clean:
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && $(CMAKE_COMMAND) -P CMakeFiles/mmk_test_cxx.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/mmk_test_cxx.dir/clean

test/CMakeFiles/mmk_test_cxx.dir/depend:
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039 /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test/CMakeFiles/mmk_test_cxx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/mmk_test_cxx.dir/depend

