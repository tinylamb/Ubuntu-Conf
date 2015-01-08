#!/usr/bin/env bash

# install zsh git wget curl package
sudo apt-get install zsh git wget curl

# install oh-my-zsh
if [ ! -d "$HOME"/.oh-my-zsh ];then
    echo "Now install oh-my-zsh"
    oh_install=https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh 
    wget --no-check-certificate "$oh_install" -O - | sh
else
    echo "oh-my-zsh is already installed."
fi

# .zshrc
if [ -f "$HOME"/.zshrc ];then
    echo "backup .zshrc"
    mv "$HOME"/.zshrc "$HOME"/.zshrc_old
fi
cp ./.zshrc "HOME"

# $SHELL=/bin/zsh
if [ "$SHELL" != "/bin/zsh" ];then
    echo "Change Shell to Zsh"
    chsh -s /bin/zsh
    sudo reboot
else
    echo "Now is Zsh."
fi


