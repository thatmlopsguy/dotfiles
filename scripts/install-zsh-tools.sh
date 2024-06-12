#!/bin/bash

echo '[*] Make zsh the default shell ...'
chsh -s $(which zsh)

echo '[*] install oh-my-zsh ...'
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '[*] Install plugins oh-my-zsh'
git clone https://github.com/zsh-users/zsh-completions.git "${ZSH_CUSTOM}/plugins/zsh-completions"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM}/plugins/zsh-autosuggestions"
git clone https://github.com/marlonrichert/zsh-autocomplete.git "${ZSH_CUSTOM}/plugins/zsh-autocomplete"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting"
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git "${ZSH_CUSTOM}/plugins/fast-syntax-highlighting"
git clone https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git "${ZSH_CUSTOM}/plugins/autoswitch_virtualenv"

echo '[*] Install themes oh-my-zsh'
git clone https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM}/themes/powerlevel10k"
