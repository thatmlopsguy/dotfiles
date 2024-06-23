#!/usr/bin/env bash

if [[ -z $STOW_FOLDERS ]]; then
    STOW_FOLDERS="git,tmux,zsh,bin"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/code/github/dotfiles
fi

STOW_FOLDERS=$STOW_FOLDERS DOTFILES=$DOTFILES

pushd $DOTFILES

# stow folders
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done