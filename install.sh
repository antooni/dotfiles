#!/bin/bash

# ZSH
cd $HOME
sudo apt-get update
sudo apt-get install zsh -y
sudo chsh -s $(which zsh)

sudo rm -rf ohmyzsh
git clone https://github.com/ohmyzsh/ohmyzsh.git

rm .zshrc
wget https://raw.githubusercontent.com/antooni/dotfiles/master/.zshrc
