# Install script for directory: /home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zero/ETH/em_ws1.0/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zero/ETH/em_ws1.0/build/elevation_mapping/elevation_mapping_demos/catkin_generated/installspace/elevation_mapping_demos.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/elevation_mapping_demos/cmake" TYPE FILE FILES
    "/home/zero/ETH/em_ws1.0/build/elevation_mapping/elevation_mapping_demos/catkin_generated/installspace/elevation_mapping_demosConfig.cmake"
    "/home/zero/ETH/em_ws1.0/build/elevation_mapping/elevation_mapping_demos/catkin_generated/installspace/elevation_mapping_demosConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/elevation_mapping_demos" TYPE FILE FILES "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/elevation_mapping_demos" TYPE DIRECTORY FILES
    "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/config"
    "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/doc"
    "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/launch"
    "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/rviz"
    "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/sample_data"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/elevation_mapping_demos" TYPE PROGRAM FILES "/home/zero/ETH/em_ws1.0/src/elevation_mapping/elevation_mapping_demos/scripts/tf_to_pose_publisher.py")
endif()

