#!/bin/bash

set -e

sudo apt-get -y update

# ms teams - not latest but working quite decent with Ubuntu 20.04 (teams_1.4.00.13653_amd64.deb has some issues)
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.7556_amd64.deb
sudo dpkg -i teams_1.4.00.7556_amd64.deb
rm -f teams_1.4.00.7556_amd64.deb
