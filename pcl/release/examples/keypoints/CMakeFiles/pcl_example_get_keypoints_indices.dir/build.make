# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zero/ETH/pcl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zero/ETH/pcl/release

# Include any dependencies generated for this target.
include examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/depend.make

# Include the progress variables for this target.
include examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/progress.make

# Include the compile flags for this target's objects.
include examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/flags.make

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/flags.make
examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o: ../examples/keypoints/example_get_keypoints_indices.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zero/ETH/pcl/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o"
	cd /home/zero/ETH/pcl/release/examples/keypoints && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o -c /home/zero/ETH/pcl/examples/keypoints/example_get_keypoints_indices.cpp

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.i"
	cd /home/zero/ETH/pcl/release/examples/keypoints && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zero/ETH/pcl/examples/keypoints/example_get_keypoints_indices.cpp > CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.i

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.s"
	cd /home/zero/ETH/pcl/release/examples/keypoints && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zero/ETH/pcl/examples/keypoints/example_get_keypoints_indices.cpp -o CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.s

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.requires:

.PHONY : examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.requires

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.provides: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.requires
	$(MAKE) -f examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/build.make examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.provides.build
.PHONY : examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.provides

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.provides.build: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o


# Object files for target pcl_example_get_keypoints_indices
pcl_example_get_keypoints_indices_OBJECTS = \
"CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o"

# External object files for target pcl_example_get_keypoints_indices
pcl_example_get_keypoints_indices_EXTERNAL_OBJECTS =

bin/pcl_example_get_keypoints_indices: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o
bin/pcl_example_get_keypoints_indices: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/build.make
bin/pcl_example_get_keypoints_indices: lib/libpcl_keypoints.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_io.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_features.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_filters.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_search.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_kdtree.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
bin/pcl_example_get_keypoints_indices: lib/libpcl_octree.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_sample_consensus.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: lib/libpcl_common.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libboost_regex.so
bin/pcl_example_get_keypoints_indices: lib/libpcl_io_ply.so.1.12.1.99
bin/pcl_example_get_keypoints_indices: /usr/lib/gcc/x86_64-linux-gnu/7/libgomp.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOMPIImage-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOMPIParallel-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkParallelMPI-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOParallel-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOImage-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkParallelCore-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkalglib-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIONetCDF-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOXML-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkIOCore-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-6.3.so.6.3.0
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libpng.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libz.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
bin/pcl_example_get_keypoints_indices: /usr/lib/libOpenNI2.so
bin/pcl_example_get_keypoints_indices: /usr/lib/libOpenNI.so
bin/pcl_example_get_keypoints_indices: /usr/lib/x86_64-linux-gnu/libpcap.so
bin/pcl_example_get_keypoints_indices: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zero/ETH/pcl/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/pcl_example_get_keypoints_indices"
	cd /home/zero/ETH/pcl/release/examples/keypoints && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_example_get_keypoints_indices.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/build: bin/pcl_example_get_keypoints_indices

.PHONY : examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/build

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/requires: examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/example_get_keypoints_indices.cpp.o.requires

.PHONY : examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/requires

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/clean:
	cd /home/zero/ETH/pcl/release/examples/keypoints && $(CMAKE_COMMAND) -P CMakeFiles/pcl_example_get_keypoints_indices.dir/cmake_clean.cmake
.PHONY : examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/clean

examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/depend:
	cd /home/zero/ETH/pcl/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zero/ETH/pcl /home/zero/ETH/pcl/examples/keypoints /home/zero/ETH/pcl/release /home/zero/ETH/pcl/release/examples/keypoints /home/zero/ETH/pcl/release/examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/keypoints/CMakeFiles/pcl_example_get_keypoints_indices.dir/depend

