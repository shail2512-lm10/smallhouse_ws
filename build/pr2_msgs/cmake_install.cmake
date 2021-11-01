# Install script for directory: /home/shail/smallhouse_ws/src/pr2_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_msgs/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/AccelerometerState.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/AccessPoint.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/BatteryServer2.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/BatteryServer.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/BatteryState2.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/BatteryState.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/DashboardState.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/GPUStatus.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/LaserScannerSignal.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/LaserTrajCmd.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/PeriodicCmd.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/PowerBoardState.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/PowerState.msg"
    "/home/shail/smallhouse_ws/src/pr2_msgs/msg/PressureState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_msgs/srv" TYPE FILE FILES
    "/home/shail/smallhouse_ws/src/pr2_msgs/srv/SetLaserTrajCmd.srv"
    "/home/shail/smallhouse_ws/src/pr2_msgs/srv/SetPeriodicCmd.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_msgs/cmake" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_msgs/catkin_generated/installspace/pr2_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/include/pr2_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/roseus/ros/pr2_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/common-lisp/ros/pr2_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/gennodejs/ros/pr2_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/shail/smallhouse_ws/devel/lib/python2.7/dist-packages/pr2_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/lib/python2.7/dist-packages/pr2_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_msgs/catkin_generated/installspace/pr2_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_msgs/cmake" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_msgs/catkin_generated/installspace/pr2_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_msgs/cmake" TYPE FILE FILES
    "/home/shail/smallhouse_ws/build/pr2_msgs/catkin_generated/installspace/pr2_msgsConfig.cmake"
    "/home/shail/smallhouse_ws/build/pr2_msgs/catkin_generated/installspace/pr2_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_msgs" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_msgs/package.xml")
endif()

