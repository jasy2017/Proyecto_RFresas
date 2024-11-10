
if(NOT "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-stamp/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-gitinfo.txt" IS_NEWER_THAN "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-stamp/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-stamp/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config advice.detachedHead=false "https://github.com/ros2/Mimick.git" "mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039"
    WORKING_DIRECTORY "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/ros2/Mimick.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout f171450b5ebaa3d2538c762a059dfc6ab7a01039 --
  WORKING_DIRECTORY "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'f171450b5ebaa3d2538c762a059dfc6ab7a01039'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-stamp/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-gitinfo.txt"
    "/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-stamp/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/jesus/Desktop/ros2_ws/build/mimick_vendor/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-prefix/src/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-stamp/mimick-f171450b5ebaa3d2538c762a059dfc6ab7a01039-gitclone-lastrun.txt'")
endif()

