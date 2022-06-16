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
include tools/CMakeFiles/pcl_morph.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/pcl_morph.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/pcl_morph.dir/flags.make

tools/CMakeFiles/pcl_morph.dir/morph.cpp.o: tools/CMakeFiles/pcl_morph.dir/flags.make
tools/CMakeFiles/pcl_morph.dir/morph.cpp.o: ../tools/morph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zero/ETH/pcl/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/pcl_morph.dir/morph.cpp.o"
	cd /home/zero/ETH/pcl/release/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_morph.dir/morph.cpp.o -c /home/zero/ETH/pcl/tools/morph.cpp

tools/CMakeFiles/pcl_morph.dir/morph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_morph.dir/morph.cpp.i"
	cd /home/zero/ETH/pcl/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zero/ETH/pcl/tools/morph.cpp > CMakeFiles/pcl_morph.dir/morph.cpp.i

tools/CMakeFiles/pcl_morph.dir/morph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_morph.dir/morph.cpp.s"
	cd /home/zero/ETH/pcl/release/tools && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zero/ETH/pcl/tools/morph.cpp -o CMakeFiles/pcl_morph.dir/morph.cpp.s

tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.requires:

.PHONY : tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.requires

tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.provides: tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.requires
	$(MAKE) -f tools/CMakeFiles/pcl_morph.dir/build.make tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.provides.build
.PHONY : tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.provides

tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.provides.build: tools/CMakeFiles/pcl_morph.dir/morph.cpp.o


# Object files for target pcl_morph
pcl_morph_OBJECTS = \
"CMakeFiles/pcl_morph.dir/morph.cpp.o"

# External object files for target pcl_morph
pcl_morph_EXTERNAL_OBJECTS =

bin/pcl_morph: tools/CMakeFiles/pcl_morph.dir/morph.cpp.o
bin/pcl_morph: tools/CMakeFiles/pcl_morph.dir/build.make
bin/pcl_morph: lib/libpcl_io.so.1.12.1.99
bin/pcl_morph: lib/libpcl_filters.so.1.12.1.99
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libboost_system.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libboost_regex.so
bin/pcl_morph: lib/libpcl_io_ply.so.1.12.1.99
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOMPIImage-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOMPIParallel-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkParallelMPI-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOParallel-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOImage-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkParallelCore-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkalglib-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIONetCDF-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOXML-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkIOCore-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-6.3.so.6.3.0
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libpng.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libz.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
bin/pcl_morph: /usr/lib/libOpenNI2.so
bin/pcl_morph: /usr/lib/libOpenNI.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libpcap.so
bin/pcl_morph: lib/libpcl_sample_consensus.so.1.12.1.99
bin/pcl_morph: lib/libpcl_search.so.1.12.1.99
bin/pcl_morph: lib/libpcl_kdtree.so.1.12.1.99
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
bin/pcl_morph: lib/libpcl_octree.so.1.12.1.99
bin/pcl_morph: lib/libpcl_common.so.1.12.1.99
bin/pcl_morph: /usr/lib/gcc/x86_64-linux-gnu/7/libgomp.so
bin/pcl_morph: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/pcl_morph: tools/CMakeFiles/pcl_morph.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zero/ETH/pcl/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/pcl_morph"
	cd /home/zero/ETH/pcl/release/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_morph.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/pcl_morph.dir/build: bin/pcl_morph

.PHONY : tools/CMakeFiles/pcl_morph.dir/build

tools/CMakeFiles/pcl_morph.dir/requires: tools/CMakeFiles/pcl_morph.dir/morph.cpp.o.requires

.PHONY : tools/CMakeFiles/pcl_morph.dir/requires

tools/CMakeFiles/pcl_morph.dir/clean:
	cd /home/zero/ETH/pcl/release/tools && $(CMAKE_COMMAND) -P CMakeFiles/pcl_morph.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/pcl_morph.dir/clean

tools/CMakeFiles/pcl_morph.dir/depend:
	cd /home/zero/ETH/pcl/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zero/ETH/pcl /home/zero/ETH/pcl/tools /home/zero/ETH/pcl/release /home/zero/ETH/pcl/release/tools /home/zero/ETH/pcl/release/tools/CMakeFiles/pcl_morph.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/pcl_morph.dir/depend

