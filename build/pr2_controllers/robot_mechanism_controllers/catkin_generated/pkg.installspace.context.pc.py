# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;angles;filters;tf;tf_conversions;eigen_conversions;pluginlib;actionlib;std_msgs;geometry_msgs;diagnostic_msgs;trajectory_msgs;pr2_controllers_msgs;pr2_controller_interface;pr2_controller_manager;kdl_parser;pr2_mechanism_model;control_toolbox;realtime_tools;message_filters;control_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrobot_mechanism_controllers".split(';') if "-lrobot_mechanism_controllers" != "" else []
PROJECT_NAME = "robot_mechanism_controllers"
PROJECT_SPACE_DIR = "/home/shail/smallhouse_ws/install"
PROJECT_VERSION = "1.10.18"
