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
CMAKE_SOURCE_DIR = /home/cao/Ctest/cmake/test2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cao/Ctest/cmake/test2/build

# Include any dependencies generated for this target.
include lib/CMakeFiles/HELLO_STATIC.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/HELLO_STATIC.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/HELLO_STATIC.dir/flags.make

lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o: lib/CMakeFiles/HELLO_STATIC.dir/flags.make
lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o: ../lib/hello.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/cao/Ctest/cmake/test2/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o"
	cd /home/cao/Ctest/cmake/test2/build/lib && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/HELLO_STATIC.dir/hello.c.o   -c /home/cao/Ctest/cmake/test2/lib/hello.c

lib/CMakeFiles/HELLO_STATIC.dir/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/HELLO_STATIC.dir/hello.c.i"
	cd /home/cao/Ctest/cmake/test2/build/lib && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/cao/Ctest/cmake/test2/lib/hello.c > CMakeFiles/HELLO_STATIC.dir/hello.c.i

lib/CMakeFiles/HELLO_STATIC.dir/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/HELLO_STATIC.dir/hello.c.s"
	cd /home/cao/Ctest/cmake/test2/build/lib && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/cao/Ctest/cmake/test2/lib/hello.c -o CMakeFiles/HELLO_STATIC.dir/hello.c.s

lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.requires:
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.requires

lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.provides: lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.requires
	$(MAKE) -f lib/CMakeFiles/HELLO_STATIC.dir/build.make lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.provides.build
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.provides

lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.provides.build: lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.provides.build

# Object files for target HELLO_STATIC
HELLO_STATIC_OBJECTS = \
"CMakeFiles/HELLO_STATIC.dir/hello.c.o"

# External object files for target HELLO_STATIC
HELLO_STATIC_EXTERNAL_OBJECTS =

../bin/libhello.a: lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o
../bin/libhello.a: lib/CMakeFiles/HELLO_STATIC.dir/build.make
../bin/libhello.a: lib/CMakeFiles/HELLO_STATIC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../bin/libhello.a"
	cd /home/cao/Ctest/cmake/test2/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/HELLO_STATIC.dir/cmake_clean_target.cmake
	cd /home/cao/Ctest/cmake/test2/build/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HELLO_STATIC.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/HELLO_STATIC.dir/build: ../bin/libhello.a
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/build

lib/CMakeFiles/HELLO_STATIC.dir/requires: lib/CMakeFiles/HELLO_STATIC.dir/hello.c.o.requires
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/requires

lib/CMakeFiles/HELLO_STATIC.dir/clean:
	cd /home/cao/Ctest/cmake/test2/build/lib && $(CMAKE_COMMAND) -P CMakeFiles/HELLO_STATIC.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/clean

lib/CMakeFiles/HELLO_STATIC.dir/depend:
	cd /home/cao/Ctest/cmake/test2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cao/Ctest/cmake/test2 /home/cao/Ctest/cmake/test2/lib /home/cao/Ctest/cmake/test2/build /home/cao/Ctest/cmake/test2/build/lib /home/cao/Ctest/cmake/test2/build/lib/CMakeFiles/HELLO_STATIC.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/HELLO_STATIC.dir/depend

