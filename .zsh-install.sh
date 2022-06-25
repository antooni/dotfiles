#!/bin/bash

sudo apt-get update
sudo apt-get install zsh -y
zsh

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo ".cfg" >> .gitignore

git clone --bare https://github.com/antooni/dotfiles $HOME/.cfg
config checkout

source ~/.zshrc
