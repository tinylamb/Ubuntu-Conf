#!/usr/bin/env bash

# install zsh git wget curl package
sudo apt-get install zsh git wget curl

# install oh-my-zsh
oh_install=https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
wget --no-check-certificate "$oh_install" -O - | sh

# $SHELL=/bin/zsh
chsh -s /bin/zsh

sudo reboot

