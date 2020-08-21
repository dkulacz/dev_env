#!/bin/bash

set -e

sudo apt-get -y update

sudo apt-get -y install i3 i3status i3lock-fancy dmenu
sudo apt-get -y install krusader krename meld kate okular
sudo apt-get -y install mc htop iotop nmon tmux picocom
sudo apt-get -y install nmap net-tools openssh-server openssh-sftp-server
sudo apt-get -y install galculator p7zip p7zip-full unrar dos2unix
sudo apt-get -y install exfat-fuse smartmontools
sudo apt-get -y install vim vim-gtk

# TODO: ms teams
# wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
# sudo dpkg -i teams_1.3.00.5153_amd64.deb
# or via snap: sudo apt-get -y install snapd & sudo snap install teams-for-linux

# git stuff
sudo apt-get -y install git git-gui gitk

# python basic stuff
sudo apt-get -y install python3-pip python3-setuptools

# install git-review in version working properly with gerrit
sudo pip3 install git-review==1.28

# commit-check.py dependencies
sudo pip3 install docopt black mypy==0.720 guardonce cmake-format[YAML]==0.6.13 flake8

# TODO: cmake-format[YAML] in version working with commit-check.py in CI

# install proper version of clang-format
sudo pip3 install clang-format==6.0.1
sudo ln -s /usr/local/bin/clang-format /usr/local/bin/clang-format-6.0

# install some aux python libs
sudo pip3 install bincopy

# shellcheck
sudo apt-get -y install shellcheck
 
#sudo apt-get -y install exiv2 exiftool
#sudo apt-get -y install qemu-kvm
#sudo apt-get -y install wine64-5.0.0 winetricks ttf-mscorefonts-installer
#sudo apt-get -y install rdesktop grdesktop

# gcc g++ gdb
sudo apt-get -y install gcc g++ gdb

# TODO: v850-elf-toolchain

# TODO: clang compiler

# zsh
sudo apt-get -y install zsh
git clone https://github.com/robbyrussell/oh-my-zsh
mv oh-my-zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc-zsh-template ~/.zshrc

# repo tool
sudo wget https://storage.googleapis.com/git-repo-downloads/repo -O /usr/bin/repo
sudo chmod 755 /usr/bin/repo

# latest cmake
sudo apt-get update
sudo apt-get -y install apt-transport-https ca-certificates gnupg software-properties-common wget
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt-get update
sudo apt-get -y install cmake

# ninja build system
sudo apt-get -y install ninja-build

# docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo groupadd -f docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl restart docker

# TODO: pycharm
# wget https://download-cf.jetbrains.com/python/pycharm-community-2020.1.1.tar.gz
# unpack to /opt/pycharm
# create symlink to /usr/local/bin

# TODO: eclipse
# wget eclipse
# unpack to /opt
# create symlink to /usr/local/bin

# TODO: sublime text
# wget sublime
# unpack to /opt
# create symlink to /usr/local/bin

# TODO: visual studio code
# wget vscode
# unpack to /opt
# create symlink to /usr/local/bin
