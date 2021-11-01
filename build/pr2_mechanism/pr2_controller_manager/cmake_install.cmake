# Install script for directory: /home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shail/smallhouse_ws/build/pr2_mechanism/pr2_controller_manager/catkin_generated/installspace/pr2_controller_manager.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controller_manager/cmake" TYPE FILE FILES
    "/home/shail/smallhouse_ws/build/pr2_mechanism/pr2_controller_manager/catkin_generated/installspace/pr2_controller_managerConfig.cmake"
    "/home/shail/smallhouse_ws/build/pr2_mechanism/pr2_controller_manager/catkin_generated/installspace/pr2_controller_managerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controller_manager" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pr2_controller_manager" TYPE PROGRAM FILES
    "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/scripts/pr2_controller_manager"
    "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/scripts/spawner"
    "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/scripts/unspawner"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/shail/smallhouse_ws/build/pr2_mechanism/pr2_controller_manager/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/shail/smallhouse_ws/devel/lib/libpr2_controller_manager.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so"
         OLD_RPATH "/home/shail/smallhouse_ws/devel/lib:/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpr2_controller_manager.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so"
         RPATH "/home/shail/smallhouse_ws/install/lib:/home/shail/smallhouse_ws/devel/lib:/home/shail/hospital_ws/devel/lib:/home/shail/catkin_ws/devel/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/gazebo-9/plugins")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/shail/smallhouse_ws/devel/lib/libcontroller_test.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so"
         OLD_RPATH "/home/shail/smallhouse_ws/devel/lib:/opt/ros/melodic/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/shail/smallhouse_ws/install/lib:/home/shail/smallhouse_ws/devel/lib:/home/shail/hospital_ws/devel/lib:/home/shail/catkin_ws/devel/lib:/opt/ros/melodic/lib:/usr/lib/x86_64-linux-gnu/gazebo-9/plugins")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontroller_test.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pr2_controller_manager" TYPE DIRECTORY FILES "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/include/pr2_controller_manager/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controller_manager" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/controller_manager.launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pr2_controller_manager/test" TYPE FILE FILES "/home/shail/smallhouse_ws/src/pr2_mechanism/pr2_controller_manager/test/controller_plugin.xml")
endif()

