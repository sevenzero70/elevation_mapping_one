# Install script for directory: /home/zero/ETH/pcl/octree

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "None")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_octreex" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_octree.so.1.12.1.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_octree.so.1.12"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_octree.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/zero/ETH/pcl/release/lib/libpcl_octree.so.1.12.1.99"
    "/home/zero/ETH/pcl/release/lib/libpcl_octree.so.1.12"
    "/home/zero/ETH/pcl/release/lib/libpcl_octree.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_octree.so.1.12.1.99"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_octree.so.1.12"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_octree.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/zero/ETH/pcl/release/lib:"
           NEW_RPATH "/usr/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_octreex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zero/ETH/pcl/release/octree/pcl_octree.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_octreex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.12/pcl/octree" TYPE FILE FILES
    "/home/zero/ETH/pcl/octree/include/pcl/octree/boost.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_base.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_container.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_impl.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_nodes.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_key.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_density.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_occupancy.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_singlepoint.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_pointvector.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_changedetector.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_voxelcentroid.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_iterator.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_search.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree2buf_base.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_adjacency.h"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/octree_pointcloud_adjacency_container.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_octreex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.12/pcl/octree/impl" TYPE FILE FILES
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree_base.hpp"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree_pointcloud.hpp"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree2buf_base.hpp"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree_iterator.hpp"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree_search.hpp"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree_pointcloud_voxelcentroid.hpp"
    "/home/zero/ETH/pcl/octree/include/pcl/octree/impl/octree_pointcloud_adjacency.hpp"
    )
endif()

