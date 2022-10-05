#!/bin/sh
# Let's get started
sudo apt-get update
sudo apt upgrade

#install everything
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

#get config
sudo wget https://raw.githubusercontent.com/TristonYoder/zsh_powerline_install/master/.zshrc -P ~/

#change shell
chsh -s /bin/zsh

#Start and Update
zsh
cd .oh-my-zsh
upgrade_oh_my_zsh

#Cleanup
cd ~
clear
