#!/bin/bash

sudo apt-get update
sudo apt-get install zsh -y
sudo chsh -s $(which zsh)

sudo rm -rf /$HOME/ohmyzsh
git clone https://github.com/ohmyzsh/ohmyzsh.git

rm .zshrc
wget -P ~/ https://raw.githubusercontent.com/antooni/dotfiles/master/.zshrc

zsh -c "echo;source ~/.zshrc"


