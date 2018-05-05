project(Example)

# include CppUTest headers
include_directories(${CPPUTEST_HOME}/include)

# add cpputest library
add_library(imp_cpputest STATIC IMPORTED)
set_property(TARGET imp_cpputest PROPERTY IMPORTED_LOCATION ${CPPUTEST_HOME}/libCppUTest.a)

# build test library for example
add_library(ExampleTest ExampleTest.cpp)

add_executable(RunAllTests RunAllTests.cpp)
target_link_libraries(RunAllTests imp_cpputest ExampleTest Example)
