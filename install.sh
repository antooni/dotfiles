#!/bin/bash

# ZSH
cd ~
sudo apt-get update
sudo apt-get install zsh -y
sudo chsh -s $(which zsh)

sudo rm -rf /$HOME/ohmyzsh
git clone https://github.com/ohmyzsh/ohmyzsh.git /$HOME/

rm ~/.zshrc
wget -P /$HOME/ https://raw.githubusercontent.com/antooni/dotfiles/master/.zshrc

exec zsh
