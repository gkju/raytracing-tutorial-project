# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gjus/Desktop/raytracer-one-weekend

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gjus/Desktop/raytracer-one-weekend

# Include any dependencies generated for this target.
include CMakeFiles/raytracer_one_weekend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/raytracer_one_weekend.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/raytracer_one_weekend.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/raytracer_one_weekend.dir/flags.make

CMakeFiles/raytracer_one_weekend.dir/main.cpp.o: CMakeFiles/raytracer_one_weekend.dir/flags.make
CMakeFiles/raytracer_one_weekend.dir/main.cpp.o: main.cpp
CMakeFiles/raytracer_one_weekend.dir/main.cpp.o: CMakeFiles/raytracer_one_weekend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/gjus/Desktop/raytracer-one-weekend/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/raytracer_one_weekend.dir/main.cpp.o"
	/Users/gjus/Desktop/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/raytracer_one_weekend.dir/main.cpp.o -MF CMakeFiles/raytracer_one_weekend.dir/main.cpp.o.d -o CMakeFiles/raytracer_one_weekend.dir/main.cpp.o -c /Users/gjus/Desktop/raytracer-one-weekend/main.cpp

CMakeFiles/raytracer_one_weekend.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer_one_weekend.dir/main.cpp.i"
	/Users/gjus/Desktop/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gjus/Desktop/raytracer-one-weekend/main.cpp > CMakeFiles/raytracer_one_weekend.dir/main.cpp.i

CMakeFiles/raytracer_one_weekend.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer_one_weekend.dir/main.cpp.s"
	/Users/gjus/Desktop/emsdk/upstream/emscripten/em++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gjus/Desktop/raytracer-one-weekend/main.cpp -o CMakeFiles/raytracer_one_weekend.dir/main.cpp.s

# Object files for target raytracer_one_weekend
raytracer_one_weekend_OBJECTS = \
"CMakeFiles/raytracer_one_weekend.dir/main.cpp.o"

# External object files for target raytracer_one_weekend
raytracer_one_weekend_EXTERNAL_OBJECTS =

raytracer_one_weekend.js: CMakeFiles/raytracer_one_weekend.dir/main.cpp.o
raytracer_one_weekend.js: CMakeFiles/raytracer_one_weekend.dir/build.make
raytracer_one_weekend.js: CMakeFiles/raytracer_one_weekend.dir/objects1.rsp
raytracer_one_weekend.js: CMakeFiles/raytracer_one_weekend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/gjus/Desktop/raytracer-one-weekend/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable raytracer_one_weekend.js"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracer_one_weekend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/raytracer_one_weekend.dir/build: raytracer_one_weekend.js
.PHONY : CMakeFiles/raytracer_one_weekend.dir/build

CMakeFiles/raytracer_one_weekend.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/raytracer_one_weekend.dir/cmake_clean.cmake
.PHONY : CMakeFiles/raytracer_one_weekend.dir/clean

CMakeFiles/raytracer_one_weekend.dir/depend:
	cd /Users/gjus/Desktop/raytracer-one-weekend && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gjus/Desktop/raytracer-one-weekend /Users/gjus/Desktop/raytracer-one-weekend /Users/gjus/Desktop/raytracer-one-weekend /Users/gjus/Desktop/raytracer-one-weekend /Users/gjus/Desktop/raytracer-one-weekend/CMakeFiles/raytracer_one_weekend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/raytracer_one_weekend.dir/depend
