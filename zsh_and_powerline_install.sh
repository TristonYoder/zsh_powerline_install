#!/bin/sh
# Let's get started
sudo apt-get update
sudo apt upgrade

#install everything
sudo apt install zsh
sudo apt-get install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#create config
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

#Change theme to powerlevel9k
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel9k\/powerlevel9k"/g' .zshrc

#Override 256 Color Error & Set Locale
sed -i '1i#Ignore 256 Color Error\nexport TERM="xterm-256color"\n\n#Set Locale\nexport LC_ALL=en_US.UTF-8\nexport LANG=en_US.UTF-8\n' .zshrc

#change shell
chsh -s /bin/zsh

#update
cd .oh-my-zsh
upgrade_oh_my_zsh

#add syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

#Cleanup & Start
zsh
cd ~
clear
