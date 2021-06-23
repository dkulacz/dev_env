#!/bin/bash

set -e

sudo apt-get -y update

sudo apt-get -y install python3-pip python3-setuptools

# python3 as default (will create proper symlink etc)
sudo apt-get -y update
sudo apt-get -y install python-is-python3
