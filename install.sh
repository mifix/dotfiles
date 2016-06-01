#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"


DOTFILES=("xmodmap" "tmux" "sakura" "zsh")


for dot in "${DOTFILES[@]}"; do
  stow -v -d ${DOTFILES_DIR} $dot -t ~
done


mkdir -p ~/.config/nvim/undos
stow -v -d ${DOTFILES_DIR} nvim -t ~/.config/nvim

mkdir -p ~/.config/base16-shell
stow -v -d ${DOTFILES_DIR} base16-shell -t ~/.config/base16-shell

mkdir -p ~/.ssh/connections
stow -v -d ${DOTFILES_DIR} ssh -t ~/.ssh

if [[ `uname` == 'Darwin' ]]; then
  stow -v -d ${DOTFILES_DIR} osx_prefernces -t ~/Library/Preferences
fi
