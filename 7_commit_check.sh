#!/bin/bash

set -e

sudo apt-get -y update

# todo: ./0_python_basics.sh -> due to pip3 required !

# commit-check.py dependencies
sudo pip3 install docopt black==20.8b1 mypy==0.720 guardonce cmakelang==0.6.13 flake8

# todo: cmake-format[YAML] in version working with commit-check.py in CI

# install proper version of clang-format
sudo pip3 install clang-format==6.0.1
sudo ln -s /usr/local/bin/clang-format /usr/local/bin/clang-format-6.0

# shellcheck
sudo apt-get -y install shellcheck
