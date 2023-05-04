# Script is written, following ideology of KISS

if (NOT DEFINED APP_NAME)
    message(FATAL_ERROR "NO_APP_NAME: Please define your app name using -DAPP_NAME='<app_name>'")
endif()

message(STATUS "generating project: ${APP_NAME}")

set(APP_CXX_STANDARD 17)

string(TOLOWER ${APP_NAME} LOWERED_NAME)
string(CONCAT INTERNAL_LIB_NAME "lib" ${LOWERED_NAME})

file(RENAME "include/libapp" "include/${INTERNAL_LIB_NAME}")

configure_file(CMakeLists.txt.in CMakeLists.txt @ONLY)
configure_file(src/version.cc.in src/version.cc)

configure_file(tests/CMakeLists.txt.in tests/CMakeLists.txt @ONLY)

configure_file(main/CMakeLists.txt.in main/CMakeLists.txt @ONLY)
configure_file(main/src/main.cc.in main/src/main.cc)

message(STATUS "cleaning everything up...")

file(REMOVE CMakeLists.txt.in)
file(REMOVE src/version.cc.in)

file(REMOVE tests/CMakeLists.txt.in)

file(REMOVE main/CMakeLists.txt.in)
file(REMOVE main/src/main.cc.in)

message(STATUS "DONE!")
message(STATUS "To build your project run: cmake -S main -B build/main")