# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /snap/clion/88/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/88/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maya/CLionProjects/EVM/lab_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maya/CLionProjects/EVM/lab_5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab_5.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab_5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab_5.dir/flags.make

CMakeFiles/lab_5.dir/main.c.o: CMakeFiles/lab_5.dir/flags.make
CMakeFiles/lab_5.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maya/CLionProjects/EVM/lab_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab_5.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab_5.dir/main.c.o   -c /home/maya/CLionProjects/EVM/lab_5/main.c

CMakeFiles/lab_5.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab_5.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/maya/CLionProjects/EVM/lab_5/main.c > CMakeFiles/lab_5.dir/main.c.i

CMakeFiles/lab_5.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab_5.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/maya/CLionProjects/EVM/lab_5/main.c -o CMakeFiles/lab_5.dir/main.c.s

# Object files for target lab_5
lab_5_OBJECTS = \
"CMakeFiles/lab_5.dir/main.c.o"

# External object files for target lab_5
lab_5_EXTERNAL_OBJECTS =

lab_5: CMakeFiles/lab_5.dir/main.c.o
lab_5: CMakeFiles/lab_5.dir/build.make
lab_5: CMakeFiles/lab_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maya/CLionProjects/EVM/lab_5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lab_5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab_5.dir/build: lab_5

.PHONY : CMakeFiles/lab_5.dir/build

CMakeFiles/lab_5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab_5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab_5.dir/clean

CMakeFiles/lab_5.dir/depend:
	cd /home/maya/CLionProjects/EVM/lab_5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maya/CLionProjects/EVM/lab_5 /home/maya/CLionProjects/EVM/lab_5 /home/maya/CLionProjects/EVM/lab_5/cmake-build-debug /home/maya/CLionProjects/EVM/lab_5/cmake-build-debug /home/maya/CLionProjects/EVM/lab_5/cmake-build-debug/CMakeFiles/lab_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab_5.dir/depend

