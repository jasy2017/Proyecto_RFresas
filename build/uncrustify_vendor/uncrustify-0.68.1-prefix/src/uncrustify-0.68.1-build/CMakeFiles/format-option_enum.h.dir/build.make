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
CMAKE_SOURCE_DIR = /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build

# Utility rule file for format-option_enum.h.

# Include the progress variables for this target.
include CMakeFiles/format-option_enum.h.dir/progress.make

CMakeFiles/format-option_enum.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Formatting /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build/src/option_enum.h"
	cd /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1 && /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build/uncrustify -c forUncrustifySources.cfg -lCPP --no-backup /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build/src/option_enum.h

format-option_enum.h: CMakeFiles/format-option_enum.h
format-option_enum.h: CMakeFiles/format-option_enum.h.dir/build.make

.PHONY : format-option_enum.h

# Rule to build all files generated by this target.
CMakeFiles/format-option_enum.h.dir/build: format-option_enum.h

.PHONY : CMakeFiles/format-option_enum.h.dir/build

CMakeFiles/format-option_enum.h.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/format-option_enum.h.dir/cmake_clean.cmake
.PHONY : CMakeFiles/format-option_enum.h.dir/clean

CMakeFiles/format-option_enum.h.dir/depend:
	cd /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1 /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1 /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build /home/jesus/Desktop/ros2_ws/build/uncrustify_vendor/uncrustify-0.68.1-prefix/src/uncrustify-0.68.1-build/CMakeFiles/format-option_enum.h.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/format-option_enum.h.dir/depend

