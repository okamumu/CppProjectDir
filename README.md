# Sample forms for CppUTest and Doxygen

A template sample for C++ programs with CppUTest and Doxygen.

## Requirements

- CMake >= 2.8?
- Doxygen >= 1.8

## Setting

- Two variagles; `CPPUTEST_INCLUDE_DIR` and `CPPUTEST_LIB_FILE` are assigned in CMakeLists.txt
- `CPPUTEST_INCLUDE_DIR`: A directory includes the header files of CppUTest.
- `CPPUTEST_LIB_FILE`: A static library of CppUTest. Usually, the name of library is `libCppUTest.a`.
