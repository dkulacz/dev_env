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

# zsh
sudo apt-get -y install zsh

# todo: ./4_git_and_repo_tool.sh -> due to git required !

# todo: check git repo cloned already
git clone https://github.com/robbyrussell/oh-my-zsh
mv oh-my-zsh ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
