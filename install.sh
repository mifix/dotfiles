#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"


DOTDIRS=("xmodmap" "tmux" "sakura" "zsh" "git" "compton" "colors")

DOTFILES=("Xresources" "dircolors")

CONFFILES=("polybar" "nvim" "firejail" "i3" "dunst" "lemonbar")


for dot in "${DOTDIR[@]}"; do
  stow -v -d ${DOTFILES_DIR} $dot -t ~
done

for dot in "${DOTFILES[@]}"; do
    ln -s "${DOTFILES_DIR}/${dot}" "$HOME/.${dot}"
done

mkdir -p ~/.config/nvim/undos

for config in "${CONFFILES[@]}"; do
  mkdir -p ~/.config/${config}
  stow -v -d ${DOTFILES_DIR} $config -t ~/.config/${config}
done


mkdir -p ~/.ssh/connections
stow -v -d ${DOTFILES_DIR} ssh -t ~/.ssh

if [[ `uname` == 'Darwin' ]]; then
  stow -v -d ${DOTFILES_DIR} osx_prefernces -t ~/Library/Preferences
fi


#git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

