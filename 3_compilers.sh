#!/bin/bash

set -e

sudo apt-get -y update

# gnu compiler for on-host unit testing
sudo apt-get -y install gcc g++ gdb

# 32-bit compat libs for GHS Multi
sudo dpkg --add-architecture i386
sudo apt-get -y update
sudo apt-get -y install libc6:i386 libncurses5:i386
sudo apt-get -y install libstdc++6:i386 libx11-6:i386 lib32z1
sudo apt-get -y install libxcursor1:i386

# todo: v850-elf-toolchain
# todo: clang
