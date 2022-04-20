#! /bin/sh
cd /build/examples/hello_world

rm -rf build

mkdir build

cd build

cmake ..

make