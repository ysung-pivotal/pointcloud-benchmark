# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/oscarr/git/pointcloud/sfcnlesc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/oscarr/git/pointcloud/sfcnlesc/build

# Include any dependencies generated for this target.
include src/CMakeFiles/sfcnlesc.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/sfcnlesc.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/sfcnlesc.dir/flags.make

src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o: src/CMakeFiles/sfcnlesc.dir/flags.make
src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o: ../src/sfcnlesc.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/oscarr/git/pointcloud/sfcnlesc/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o"
	cd /home/oscarr/git/pointcloud/sfcnlesc/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o -c /home/oscarr/git/pointcloud/sfcnlesc/src/sfcnlesc.cc

src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.i"
	cd /home/oscarr/git/pointcloud/sfcnlesc/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/oscarr/git/pointcloud/sfcnlesc/src/sfcnlesc.cc > CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.i

src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.s"
	cd /home/oscarr/git/pointcloud/sfcnlesc/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/oscarr/git/pointcloud/sfcnlesc/src/sfcnlesc.cc -o CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.s

src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.requires:
.PHONY : src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.requires

src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.provides: src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.requires
	$(MAKE) -f src/CMakeFiles/sfcnlesc.dir/build.make src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.provides.build
.PHONY : src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.provides

src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.provides.build: src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o

# Object files for target sfcnlesc
sfcnlesc_OBJECTS = \
"CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o"

# External object files for target sfcnlesc
sfcnlesc_EXTERNAL_OBJECTS =

bin/sfcnlesc: src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o
bin/sfcnlesc: src/CMakeFiles/sfcnlesc.dir/build.make
bin/sfcnlesc: /usr/lib/libgeos_c.so
bin/sfcnlesc: src/CMakeFiles/sfcnlesc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/sfcnlesc"
	cd /home/oscarr/git/pointcloud/sfcnlesc/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sfcnlesc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/sfcnlesc.dir/build: bin/sfcnlesc
.PHONY : src/CMakeFiles/sfcnlesc.dir/build

src/CMakeFiles/sfcnlesc.dir/requires: src/CMakeFiles/sfcnlesc.dir/sfcnlesc.cc.o.requires
.PHONY : src/CMakeFiles/sfcnlesc.dir/requires

src/CMakeFiles/sfcnlesc.dir/clean:
	cd /home/oscarr/git/pointcloud/sfcnlesc/build/src && $(CMAKE_COMMAND) -P CMakeFiles/sfcnlesc.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/sfcnlesc.dir/clean

src/CMakeFiles/sfcnlesc.dir/depend:
	cd /home/oscarr/git/pointcloud/sfcnlesc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/oscarr/git/pointcloud/sfcnlesc /home/oscarr/git/pointcloud/sfcnlesc/src /home/oscarr/git/pointcloud/sfcnlesc/build /home/oscarr/git/pointcloud/sfcnlesc/build/src /home/oscarr/git/pointcloud/sfcnlesc/build/src/CMakeFiles/sfcnlesc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/sfcnlesc.dir/depend
