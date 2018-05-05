#set(CMAKE_VERBOSE_MAKEFILE 1)
cmake_minimum_required(VERSION 2.8)

project(Example CXX)

set(VERSION_STRING "0.1.0")

message("Version: ${VERSION_STRING}")

set(CPPUTEST_HOME ${PROJECT_SOURCE_DIR}/CppUTest)
set(CPPUTEST_INCLUDE_DIR ${CPPUTEST_HOME}/include)
set(CPPUTEST_LIB_FILE ${CPPUTEST_HOME}/libCppUTest.a)

include_directories(include)
add_subdirectory(doc)
add_subdirectory(src/main)
add_subdirectory(src/test)

add_custom_target(check COMMAND ./src/test/RunAllTests DEPENDS RunAllTests)
