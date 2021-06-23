#!/bin/bash

set -e

sudo apt-get -y update

# todo: ./0_python_basics.sh -> due to pip3 required !

# git with some helpers
sudo apt-get -y install git git-gui gitk

# git-review version working properly with our gerrit
sudo pip3 install git-review==1.28

# repo tool
sudo wget https://storage.googleapis.com/git-repo-downloads/repo -O /usr/bin/repo
sudo chmod 755 /usr/bin/repo