cmake_minimum_required(VERSION 3.14...3.22)

project(BuildAll LANGUAGES CXX)

include(../cmake/tools.cmake)

# needed to generate test target
enable_testing()

add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../app ${CMAKE_BINARY_DIR}/standalone)
add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/../tests ${CMAKE_BINARY_DIR}/test)