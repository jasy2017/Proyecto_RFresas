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
include test/CMakeFiles/foo.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/foo.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/foo.dir/flags.make

test/CMakeFiles/foo.dir/libfoo.c.o: test/CMakeFiles/foo.dir/flags.make
test/CMakeFiles/foo.dir/libfoo.c.o: /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/libfoo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/foo.dir/libfoo.c.o"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/foo.dir/libfoo.c.o   -c /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/libfoo.c

test/CMakeFiles/foo.dir/libfoo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/foo.dir/libfoo.c.i"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/libfoo.c > CMakeFiles/foo.dir/libfoo.c.i

test/CMakeFiles/foo.dir/libfoo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/foo.dir/libfoo.c.s"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test/libfoo.c -o CMakeFiles/foo.dir/libfoo.c.s

# Object files for target foo
foo_OBJECTS = \
"CMakeFiles/foo.dir/libfoo.c.o"

# External object files for target foo
foo_EXTERNAL_OBJECTS =

test/libfoo.so: test/CMakeFiles/foo.dir/libfoo.c.o
test/libfoo.so: test/CMakeFiles/foo.dir/build.make
test/libfoo.so: test/CMakeFiles/foo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libfoo.so"
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/foo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/foo.dir/build: test/libfoo.so

.PHONY : test/CMakeFiles/foo.dir/build

test/CMakeFiles/foo.dir/clean:
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test && $(CMAKE_COMMAND) -P CMakeFiles/foo.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/foo.dir/clean

test/CMakeFiles/foo.dir/depend:
	cd /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039 /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039/test /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test /home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-build/test/CMakeFiles/foo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/foo.dir/depend

