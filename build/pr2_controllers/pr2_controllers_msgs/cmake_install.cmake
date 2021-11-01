# Install script for directory: /home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shail/smallhouse_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/msg/JointControllerState.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/msg/JointControllerStateArray.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/msg/JointTrajectoryControllerState.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/msg/Pr2GripperCommand.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/srv" TYPE FILE FILES
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/srv/QueryCalibrationState.srv"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/srv/QueryTrajectoryState.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/action" TYPE FILE FILES
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/action/JointTrajectory.action"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/action/PointHead.action"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/action/Pr2GripperCommand.action"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/action/SingleJointPosition.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryAction.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryActionGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryActionResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryActionFeedback.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/JointTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadAction.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadActionGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadActionResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadActionFeedback.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/PointHeadFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandAction.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandActionGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandActionResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandActionFeedback.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/Pr2GripperCommandFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionAction.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionActionGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionActionResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionActionFeedback.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionGoal.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionResult.msg"
    "/home/shail/smallhouse_ws/devel/share/pr2_controllers_msgs/msg/SingleJointPositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/cmake" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/include/pr2_controllers_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/roseus/ros/pr2_controllers_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/common-lisp/ros/pr2_controllers_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/gennodejs/ros/pr2_controllers_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/shail/smallhouse_ws/devel/lib/python2.7/dist-packages/pr2_controllers_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/lib/python2.7/dist-packages/pr2_controllers_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/cmake" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs/cmake" TYPE FILE FILES
    "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgsConfig.cmake"
    "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_controllers_msgs/catkin_generated/installspace/pr2_controllers_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controllers_msgs" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_controllers_msgs/package.xml")
endif()

