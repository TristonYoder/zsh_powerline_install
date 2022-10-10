#!/bin/sh
# Let's get started
#sudo apt-get update
#sudo apt upgrade

#install everything
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

#get config
curl https://raw.githubusercontent.com/TristonYoder/zsh_powerline_install/master/.zshrc -o ~/.zshrc

#change shell
chsh -s /bin/zsh

#Start and Update
zsh
cd .oh-my-zsh
upgrade_oh_my_zsh

#Cleanup
cd ~
clear
