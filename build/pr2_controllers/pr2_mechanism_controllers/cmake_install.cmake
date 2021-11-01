# Install script for directory: /home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers/msg" TYPE FILE FILES
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState2.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseControllerState.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/BaseOdometryState.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/DebugInfo.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/Odometer.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/OdometryMatrix.msg"
    "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/msg/TrackLinkCmd.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers/srv" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/srv/SetProfile.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers/cmake" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_mechanism_controllers/catkin_generated/installspace/pr2_mechanism_controllers-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/include/pr2_mechanism_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/roseus/ros/pr2_mechanism_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/common-lisp/ros/pr2_mechanism_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/share/gennodejs/ros/pr2_mechanism_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/shail/smallhouse_ws/devel/lib/python2.7/dist-packages/pr2_mechanism_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/devel/lib/python2.7/dist-packages/pr2_mechanism_controllers")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_mechanism_controllers/catkin_generated/installspace/pr2_mechanism_controllers.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers/cmake" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_mechanism_controllers/catkin_generated/installspace/pr2_mechanism_controllers-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers/cmake" TYPE FILE FILES
    "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_mechanism_controllers/catkin_generated/installspace/pr2_mechanism_controllersConfig.cmake"
    "/home/shail/smallhouse_ws/build/pr2_controllers/pr2_mechanism_controllers/catkin_generated/installspace/pr2_mechanism_controllersConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so"
         RPATH "/home/shail/smallhouse_ws/install/lib:/home/shail/smallhouse_ws/devel/lib:/home/shail/hospital_ws/devel/lib:/home/shail/catkin_ws/devel/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/gazebo-9/plugins")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/shail/smallhouse_ws/devel/lib/libpr2_mechanism_controllers.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so"
         OLD_RPATH "/home/shail/smallhouse_ws/devel/lib:/opt/ros/melodic/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/shail/smallhouse_ws/install/lib:/home/shail/smallhouse_ws/devel/lib:/home/shail/hospital_ws/devel/lib:/home/shail/catkin_ws/devel/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/gazebo-9/plugins")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_mechanism_controllers.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pr2_mechanism_controllers" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/include/pr2_mechanism_controllers/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_mechanism_controllers" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/controller_plugins.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pr2_mechanism_controllers" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/src/pr2_controllers/pr2_mechanism_controllers/scripts/")
endif()

