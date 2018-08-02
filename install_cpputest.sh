#!/bin/sh

git clone git://github.com/cpputest/cpputest.git tmp/cpputest
cd tmp/cpputest/cpputest_build
cmake ..
make

# install (copy files)
cd ../../../
mkdir -p CppUTest
cp -f tmp/cpputest/cpputest_build/src/CppUTest/libCppUTest.a CppUTest/
cp -r tmp/cpputest/include/CppUTest CppUTest/include

# delete
rm -fR tmp
