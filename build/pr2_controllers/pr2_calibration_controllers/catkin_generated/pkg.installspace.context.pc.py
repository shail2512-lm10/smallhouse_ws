# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "std_msgs;pr2_controller_interface;roscpp;pr2_mechanism_model;realtime_tools;robot_mechanism_controllers;pr2_mechanism_controllers;pluginlib".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpr2_calibration_controllers".split(';') if "-lpr2_calibration_controllers" != "" else []
PROJECT_NAME = "pr2_calibration_controllers"
PROJECT_SPACE_DIR = "/home/shail/smallhouse_ws/install"
PROJECT_VERSION = "1.10.18"
