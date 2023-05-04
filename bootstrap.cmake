# Script is written, following ideology of KISS

# OPTIONS

# take the project name from project root directory
cmake_path(GET CMAKE_SOURCE_DIR FILENAME APP_NAME)

set(APP_CXX_STANDARD 17)

# PROJECT GENERATION

message(STATUS "generating project: ${APP_NAME}")

string(TOLOWER ${APP_NAME} LOWERED_NAME)
string(CONCAT INTERNAL_LIB_NAME "lib" ${LOWERED_NAME})

file(RENAME "include/libapp" "include/${INTERNAL_LIB_NAME}")

configure_file(CMakeLists.txt.in CMakeLists.txt @ONLY)
configure_file(src/version.cc.in src/version.cc)

configure_file(tests/CMakeLists.txt.in tests/CMakeLists.txt @ONLY)

configure_file(main/CMakeLists.txt.in main/CMakeLists.txt @ONLY)
configure_file(main/src/main.cc.in main/src/main.cc)

message(STATUS "cleaning everything up...")

message(STATUS "removing template files...")

file(REMOVE CMakeLists.txt.in)
file(REMOVE src/version.cc.in)

file(REMOVE tests/CMakeLists.txt.in)

file(REMOVE main/CMakeLists.txt.in)
file(REMOVE main/src/main.cc.in)

message(STATUS "removing .git folder...")

file(REMOVE_RECURSE .git/)

message(STATUS "DONE!")
message(STATUS "To build your project run: cmake -S main -B build/main")
message(STATUS "Feel free to delete me!")