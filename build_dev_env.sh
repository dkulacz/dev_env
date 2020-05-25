#!/bin/bash

set -e

sudo apt update

sudo apt install i3 i3status i3lock-fancy dmenu
sudo apt install krusader krename meld kate okular
sudo apt install mc htop iotop nmon tmux picocom
sudo apt install nmap net-tools openssh-server openssh-sftp-server
sudo apt install galculator p7zip p7zip-full unrar dos2unix
sudo apt install exfat-fuse smartmontools
sudo apt install vim vim-gtk

# TODO: ms teams
# wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
# sudo dpkg -i teams_1.3.00.5153_amd64.deb
# or via snap: sudo apt install snapd & sudo snap install teams-for-linux

sudo apt install git git-gui git-review gitk

# TODO: python stuff
sudo apt install python3-pip
sudo pip3 install bincopy

# update git-review to version working properly with gerrit
sudo pip3 install git-review==1.28

# commit-check.py dependencies
sudo pip3 install setuptools docopt black mypy==0.720 guardonce cmake-format[YAML]

# shellcheck
sudo apt install shellcheck
 
#sudo apt install docker docker.ce docker.io
#sudo apt install exiv2 exiftool
#sudo apt install dosbox qemu-kvm
#sudo apt install wine64-5.0.0 winetricks ttf-mscorefonts-installer
#sudo apt install virtualbox virtualbox-guest-additons-iso
#sudo apt install rdesktop grdesktop

# gcc g++ gdb
sudo apt install gcc g++ gdb

# TODO: clang clang-tidy
sudo apt install clang-format-6

# zsh
sudo apt install zsh
git clone https://github.com/robbyrussell/oh-my-zsh
mv -R oh-my-zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc-zsh-template ~/.zshrc

# repo tool
sudo wget https://storage.googleapis.com/git-repo-downloads/repo -O /usr/bin/repo
sudo chmod 755 /usr/bin/repo

# latest cmake
sudo apt update
sudo apt install apt-transport-https ca-certificates gnupg software-properties-common wget
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt update
sudo apt install cmake

# ninja build system
sudo apt install ninja-build

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
