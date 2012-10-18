#!/bin/sh
TOOL_PREFIX=/home/llandis/projects/amx/buildroot/output/host/usr/bin/arm-unknown-linux-uclibcgnueabi

export CXX=$TOOL_PREFIX-g++
export AR=$TOOL_PREFIX-ar
#export RANLIB=$TOOL_PREFIX-ranlib
export CC=$TOOL_PREFIX-gcc
#export LD=$TOOL_PREFIX-ld
export LINK=$TOOL_PREFIX-g++

export CCFLAGS="-march=arm5te -tune=arm926ej-s"

./configure --without-snapshot --dest-cpu=arm --with-arm-float-abi=soft --dest-os=linux

make --jobs=8

