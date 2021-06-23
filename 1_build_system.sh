#!/bin/bash

set -e

sudo apt-get -y update

# cmake
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates gnupg software-properties-common wget
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(. /etc/os-release; echo "$UBUNTU_CODENAME") main"
sudo apt-get update
sudo apt-get -y install cmake

# ninja
sudo apt-get -y install ninja-build
