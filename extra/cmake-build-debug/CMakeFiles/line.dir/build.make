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
CMAKE_COMMAND = /snap/clion/98/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/98/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maya/CLionProjects/EVM/line

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maya/CLionProjects/EVM/line/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/line.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/line.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/line.dir/flags.make

CMakeFiles/line.dir/main.cpp.o: CMakeFiles/line.dir/flags.make
CMakeFiles/line.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maya/CLionProjects/EVM/line/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/line.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/line.dir/main.cpp.o -c /home/maya/CLionProjects/EVM/line/main.cpp

CMakeFiles/line.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/line.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maya/CLionProjects/EVM/line/main.cpp > CMakeFiles/line.dir/main.cpp.i

CMakeFiles/line.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/line.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maya/CLionProjects/EVM/line/main.cpp -o CMakeFiles/line.dir/main.cpp.s

# Object files for target line
line_OBJECTS = \
"CMakeFiles/line.dir/main.cpp.o"

# External object files for target line
line_EXTERNAL_OBJECTS =

line: CMakeFiles/line.dir/main.cpp.o
line: CMakeFiles/line.dir/build.make
line: /home/maya/sfml/lib/libsfml-graphics.so.2.5.1
line: /home/maya/sfml/lib/libsfml-window.so.2.5.1
line: /home/maya/sfml/lib/libsfml-system.so.2.5.1
line: CMakeFiles/line.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maya/CLionProjects/EVM/line/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable line"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/line.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/line.dir/build: line

.PHONY : CMakeFiles/line.dir/build

CMakeFiles/line.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/line.dir/cmake_clean.cmake
.PHONY : CMakeFiles/line.dir/clean

CMakeFiles/line.dir/depend:
	cd /home/maya/CLionProjects/EVM/line/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maya/CLionProjects/EVM/line /home/maya/CLionProjects/EVM/line /home/maya/CLionProjects/EVM/line/cmake-build-debug /home/maya/CLionProjects/EVM/line/cmake-build-debug /home/maya/CLionProjects/EVM/line/cmake-build-debug/CMakeFiles/line.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/line.dir/depend

