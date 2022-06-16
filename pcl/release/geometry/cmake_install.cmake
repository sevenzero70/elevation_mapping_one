# Install script for directory: /home/zero/ETH/pcl/geometry

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_geometryx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zero/ETH/pcl/release/geometry/pcl_geometry.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_geometryx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.12/pcl/geometry" TYPE FILE FILES
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/boost.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/eigen.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/get_boundary.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/line_iterator.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_base.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_circulators.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_conversion.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_elements.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_indices.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_io.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/mesh_traits.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/organized_index_iterator.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/planar_polygon.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/polygon_mesh.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/polygon_operations.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/quad_mesh.h"
    "/home/zero/ETH/pcl/geometry/include/pcl/geometry/triangle_mesh.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_geometryx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.12/pcl/geometry/impl" TYPE FILE FILES "/home/zero/ETH/pcl/geometry/include/pcl/geometry/impl/polygon_operations.hpp")
endif()

