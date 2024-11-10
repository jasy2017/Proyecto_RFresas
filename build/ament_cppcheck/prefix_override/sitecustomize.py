import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/jesus/Desktop/ros2_ws/install/ament_cppcheck'
