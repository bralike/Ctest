# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.6

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cao/Ctest/cmake/cmake_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cao/Ctest/cmake/cmake_demo/build

# Include any dependencies generated for this target.
include src/main/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include src/main/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include src/main/CMakeFiles/hello.dir/flags.make

src/main/CMakeFiles/hello.dir/main.o: src/main/CMakeFiles/hello.dir/flags.make
src/main/CMakeFiles/hello.dir/main.o: ../src/main/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cao/Ctest/cmake/cmake_demo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object src/main/CMakeFiles/hello.dir/main.o"
	cd /home/cao/Ctest/cmake/cmake_demo/build/src/main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/hello.dir/main.o   -c /home/cao/Ctest/cmake/cmake_demo/src/main/main.c

src/main/CMakeFiles/hello.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello.dir/main.i"
	cd /home/cao/Ctest/cmake/cmake_demo/build/src/main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/cao/Ctest/cmake/cmake_demo/src/main/main.c > CMakeFiles/hello.dir/main.i

src/main/CMakeFiles/hello.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello.dir/main.s"
	cd /home/cao/Ctest/cmake/cmake_demo/build/src/main && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/cao/Ctest/cmake/cmake_demo/src/main/main.c -o CMakeFiles/hello.dir/main.s

src/main/CMakeFiles/hello.dir/main.o.requires:
.PHONY : src/main/CMakeFiles/hello.dir/main.o.requires

src/main/CMakeFiles/hello.dir/main.o.provides: src/main/CMakeFiles/hello.dir/main.o.requires
	$(MAKE) -f src/main/CMakeFiles/hello.dir/build.make src/main/CMakeFiles/hello.dir/main.o.provides.build
.PHONY : src/main/CMakeFiles/hello.dir/main.o.provides

src/main/CMakeFiles/hello.dir/main.o.provides.build: src/main/CMakeFiles/hello.dir/main.o
.PHONY : src/main/CMakeFiles/hello.dir/main.o.provides.build

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/main.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

../bin/hello: src/main/CMakeFiles/hello.dir/main.o
../bin/hello: ../lib/libutil.a
../bin/hello: src/main/CMakeFiles/hello.dir/build.make
../bin/hello: src/main/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../../bin/hello"
	cd /home/cao/Ctest/cmake/cmake_demo/build/src/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/main/CMakeFiles/hello.dir/build: ../bin/hello
.PHONY : src/main/CMakeFiles/hello.dir/build

src/main/CMakeFiles/hello.dir/requires: src/main/CMakeFiles/hello.dir/main.o.requires
.PHONY : src/main/CMakeFiles/hello.dir/requires

src/main/CMakeFiles/hello.dir/clean:
	cd /home/cao/Ctest/cmake/cmake_demo/build/src/main && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : src/main/CMakeFiles/hello.dir/clean

src/main/CMakeFiles/hello.dir/depend:
	cd /home/cao/Ctest/cmake/cmake_demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cao/Ctest/cmake/cmake_demo /home/cao/Ctest/cmake/cmake_demo/src/main /home/cao/Ctest/cmake/cmake_demo/build /home/cao/Ctest/cmake/cmake_demo/build/src/main /home/cao/Ctest/cmake/cmake_demo/build/src/main/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/main/CMakeFiles/hello.dir/depend

