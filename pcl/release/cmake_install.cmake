# Install script for directory: /home/zero/ETH/pcl

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.12/pcl" TYPE FILE FILES "/home/zero/ETH/pcl/release/include/pcl/pcl_config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpclconfigx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.12/Modules" TYPE FILE FILES
    "/home/zero/ETH/pcl/cmake/Modules/FindClangFormat.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindDSSDK.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindEigen.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindEnsenso.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindFLANN.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindGLEW.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindOpenMP.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindOpenNI.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindOpenNI2.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindPcap.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindQhull.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindRSSDK.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindRSSDK2.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FindSphinx.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/FinddavidSDK.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/Findlibusb.cmake"
    "/home/zero/ETH/pcl/cmake/Modules/UseCompilerCache.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpclconfigx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.12" TYPE FILE FILES
    "/home/zero/ETH/pcl/release/PCLConfig.cmake"
    "/home/zero/ETH/pcl/release/PCLConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/zero/ETH/pcl/release/common/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/kdtree/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/octree/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/search/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/sample_consensus/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/filters/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/2d/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/geometry/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/io/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/features/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/ml/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/segmentation/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/visualization/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/surface/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/registration/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/keypoints/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/tracking/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/recognition/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/stereo/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/apps/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/benchmarks/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/cuda/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/outofcore/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/examples/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/gpu/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/people/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/simulation/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/test/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/tools/cmake_install.cmake")
  include("/home/zero/ETH/pcl/release/doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/zero/ETH/pcl/release/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
