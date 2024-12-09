#!/bin/bash

set -e

sudo apt-get -y update

sudo apt-get -y install python3-pip python3-setuptools python-is-python3

# git
sudo apt-get -y install git git-gui gitk
sudo pip3 install git-review

# zsh
sudo apt-get -y install zsh
git clone https://github.com/robbyrussell/oh-my-zsh
mv oh-my-zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# repo tool
sudo wget https://storage.googleapis.com/git-repo-downloads/repo -O /usr/bin/repo
sudo chmod 755 /usr/bin/repo

# some handy tools
sudo apt-get -y install i3 i3status i3lock-fancy dmenu
sudo apt-get -y install krusader krename meld kate okular
sudo apt-get -y install mc htop iotop nmon tmux picocom
sudo apt-get -y install nmap net-tools openssh-server openssh-sftp-server
sudo apt-get -y install galculator p7zip p7zip-full unrar dos2unix
sudo apt-get -y install exfat-fuse smartmontools
sudo apt-get -y install vim vim-gtk
sudo apt-get -y install can-utils ethtool adb dlt-viewer ncal
sudo apt-get -y install glogg meld picocom wireshark plantuml

# gcc g++ gdb
sudo apt-get -y install build-essential make gcc-12 g++ gdb

#####################################################################################

# # 32-bit compat libs for GHS Multi
# sudo dpkg --add-architecture i386
# sudo apt-get -y update
# sudo apt-get -y install libc6:i386 libncurses5:i386
# sudo apt-get -y install libstdc++6:i386 libx11-6:i386 lib32z1
# sudo apt-get -y install libxcursor1:i386

# # commit-check.py dependencies
# sudo pip3 install docopt black==20.8b1 mypy==0.720 guardonce cmakelang==0.6.13 flake8

# # TODO: cmake-format[YAML] in version working with commit-check.py in CI

# # install proper version of clang-format
# sudo pip3 install clang-format==6.0.1
# sudo ln -s /usr/local/bin/clang-format /usr/local/bin/clang-format-6.0

# # shellcheck
# sudo apt-get -y install shellcheck
 
# #sudo apt-get -y install exiv2 exiftool
# #sudo apt-get -y install qemu-kvm
# #sudo apt-get -y install wine64-5.0.0 winetricks ttf-mscorefonts-installer
# #sudo apt-get -y install rdesktop grdesktop

# # latest cmake
# sudo apt-get update
# sudo apt-get -y install apt-transport-https ca-certificates gnupg software-properties-common wget
# wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
# sudo apt-add-repository "deb https://apt.kitware.com/ubuntu/ $(. /etc/os-release; echo "$UBUNTU_CODENAME") main"
# sudo apt-get update
# sudo apt-get -y install cmake

# # ninja build system
# sudo apt-get -y install ninja-build

# # docker
# sudo apt-get update && sudo apt-get -y install ca-certificates curl
# sudo install -m 0755 -d /etc/apt/keyrings
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
# sudo chmod a+r /etc/apt/keyrings/docker.asc
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker
# # todo: ??? sudo systemctl restart docker
# docker run hello-world

# # boost
# #
# # edit /etc/apt/sources.list.d/mhier-ubuntu-libboost-latest-jammy.list
# # and paste: deb https://ppa.launchpadcontent.net/mhier/libboost-latest/ubuntu/ focal main
# # to force using older Focal (20.04) repo
# sudo add-apt-repository "ppa:mhier/libboost-latest"
# sudo apt update
# sudo apt install libboost1.70-dev

# # install some aux python libs
# sudo pip3 install bincopy

# # protobuf
# sudo pip3 install protobuf==3.12.4
# sudo apt-get -y install protobuf-compiler

# # i3 helpers
# sudo apt-get -y install brightnessctl
# sudo apt-get -y install volumeicon-alsa
# sudo apt-get -y install blueman
