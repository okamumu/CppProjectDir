set(CMAKE_VERBOSE_MAKEFILE 1)
cmake_minimum_required(VERSION 3.0.2)

project (Example CXX)

set(CPPUTEST_HOME ${PROJECT_SOURCE_DIR}/CppUTest)

message("CppUTest directory: ${CPPUTEST_HOME}")

include_directories(include)
add_subdirectory(doc)
add_subdirectory(src/main)
add_subdirectory(src/test)

add_custom_target(test-run COMMAND ./src/test/RunAllTests DEPENDS RunAllTests)
