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
include examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/depend.make

# Include the progress variables for this target.
include examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/progress.make

# Include the compile flags for this target's objects.
include examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/flags.make

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/flags.make
examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o: ../examples/common/example_copy_point_cloud.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zero/ETH/pcl/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o"
	cd /home/zero/ETH/pcl/release/examples/common && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o -c /home/zero/ETH/pcl/examples/common/example_copy_point_cloud.cpp

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.i"
	cd /home/zero/ETH/pcl/release/examples/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zero/ETH/pcl/examples/common/example_copy_point_cloud.cpp > CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.i

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.s"
	cd /home/zero/ETH/pcl/release/examples/common && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zero/ETH/pcl/examples/common/example_copy_point_cloud.cpp -o CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.s

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.requires:

.PHONY : examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.requires

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.provides: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.requires
	$(MAKE) -f examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/build.make examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.provides.build
.PHONY : examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.provides

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.provides.build: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o


# Object files for target pcl_example_copy_point_cloud
pcl_example_copy_point_cloud_OBJECTS = \
"CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o"

# External object files for target pcl_example_copy_point_cloud
pcl_example_copy_point_cloud_EXTERNAL_OBJECTS =

bin/pcl_example_copy_point_cloud: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o
bin/pcl_example_copy_point_cloud: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/build.make
bin/pcl_example_copy_point_cloud: lib/libpcl_common.so.1.12.1.99
bin/pcl_example_copy_point_cloud: /usr/lib/gcc/x86_64-linux-gnu/7/libgomp.so
bin/pcl_example_copy_point_cloud: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/pcl_example_copy_point_cloud: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zero/ETH/pcl/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/pcl_example_copy_point_cloud"
	cd /home/zero/ETH/pcl/release/examples/common && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_example_copy_point_cloud.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/build: bin/pcl_example_copy_point_cloud

.PHONY : examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/build

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/requires: examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/example_copy_point_cloud.cpp.o.requires

.PHONY : examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/requires

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/clean:
	cd /home/zero/ETH/pcl/release/examples/common && $(CMAKE_COMMAND) -P CMakeFiles/pcl_example_copy_point_cloud.dir/cmake_clean.cmake
.PHONY : examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/clean

examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/depend:
	cd /home/zero/ETH/pcl/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zero/ETH/pcl /home/zero/ETH/pcl/examples/common /home/zero/ETH/pcl/release /home/zero/ETH/pcl/release/examples/common /home/zero/ETH/pcl/release/examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/common/CMakeFiles/pcl_example_copy_point_cloud.dir/depend

