#!/bin/zsh

# install Theme Spaceship
sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/themes/spaceship-prompt" &&

sudo ln -s "$ZSH/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/themes/spaceship.zsh-theme" && 

echo "configure ./zshrc  ZSH_THEME=spaceship" 


