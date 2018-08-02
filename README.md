# Sample forms for CppUTest and Doxygen

A template for C++ project with CppUTest and Doxygen.

## Requirements

- CMake >= 2.8
- Doxygen >= 1.8

## Directories

- `include`: A directry of common include files.
- `doc`: Documents with Doxygen.
- `src/main`: Program files.
- `src/test`: Test files.

## Variables

- `CPPUTEST_INCLUDE_DIR`: A directory includes the header files of CppUTest such as `TestHarness.h`, etc.
- `CPPUTEST_LIB_FILE`: A static library of CppUTest. Usually, the name of library is `libCppUTest.a`.
- `VERSION_STRING`: The version of programs.
- `PROJECT_NAME`: The name of project that is defined by the `project` command in CMakeLists.txt.

## Installing CppUTest

Execute the shell script

```
./install_cpputest.sh
```

- Download from source codes of CppUTest via git
- Compile CppUTest with CMake
- Copy the library and include files to the directory CppUTest

## Basic Usage

```
mkdir -p build
cd build
cmake .. # Create Makefile by CMake. `..` indicates the root of project.
make  # Build programs with make.
make check # Execute tests with CppUTest
make doc # Generate documents with Doxygen
```
