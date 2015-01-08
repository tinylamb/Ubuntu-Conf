#!/usr/bin/env bash

# install zsh git wget curl package
sudo apt-get install zsh git wget curl

# install oh-my-zsh
if [ ! -d "$HOME"/.oh-my-zsh ];then
    oh_install=https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
    wget --no-check-certificate "$oh_install" -O - | sh
fi

# $SHELL=/bin/zsh
if [ "$SHELL" != "/bin/bash" ];then
    chsh -s /bin/zsh
    sudo reboot
fi


