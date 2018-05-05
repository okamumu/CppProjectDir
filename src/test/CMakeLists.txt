project(Example)

# include CppUTest headers
message("CppUTest include directory: ${CPPUTEST_INCLUDE_DIR}")
include_directories(${CPPUTEST_INCLUDE_DIR})

# add cpputest library
message("CppUTest lib file: ${CPPUTEST_LIB_FILE}")
add_library(imp_cpputest STATIC IMPORTED)
set_property(TARGET imp_cpputest PROPERTY IMPORTED_LOCATION ${CPPUTEST_LIB_FILE})

# build test library for example
add_library(ExampleTest ExampleTest.cpp)

add_executable(RunAllTests RunAllTests.cpp)
target_link_libraries(RunAllTests imp_cpputest ExampleTest Example)
