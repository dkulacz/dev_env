#!/bin/bash

set -e

sudo apt-get -y update

# docker
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo groupadd -f docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl restart docker
