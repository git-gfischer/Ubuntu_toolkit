#!/bin/bash

echo "After the installation reboot your system" &&
echo "After reinicialization install spaceship theme" &&

sudo apt update &&

sudo apt -y upgrade &&

sudo apt -y install zsh && # download and install of zsh 

sudo apt-get -y install powerline fonts-powerline &&

#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 



# install Theme Spaceship
#git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" &&

#ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

