#!/bin/bash

set -e

sudo apt-get -y update

# todo: ./0_python_basics.sh -> due to pip3 required !

# bincopy for python-based post-processing of binaries
sudo pip3 install bincopy

# protobuf
sudo pip3 install protobuf
sudo apt-get -y install protobuf-compiler

# boost for unit testing
sudo add-apt-repository -y "ppa:mhier/libboost-latest"
sudo apt-get -y update
sudo apt-get -y install libboost1.70-dev
