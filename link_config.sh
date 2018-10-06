#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"


DOTDIRS=("xmodmap" "tmux" "sakura" "zsh" "git" "compton" "colors" "offlineimap")

DOTFILES=("Xresources" )

CONFFILES=("polybar" "nvim" "firejail" "i3" "dunst" "lemonbar" \
  "rofi" "termite" "i3blocks" "qutebrowser" "ranger" "mutt")

SNAPCONFS=("lxd")


# bin dir
[[ ! -L $HOME/bin ]] && ln -s "${DOTFILES_DIR}/bin" "$HOME/bin"


for dot in "${DOTDIRS[@]}"; do
  stow -v -d ${DOTFILES_DIR} $dot -t ~
done

for dot in "${DOTFILES[@]}"; do
    [[ ! -L "$HOME/.${dot}" ]] && ln -s "${DOTFILES_DIR}/${dot}" "$HOME/.${dot}"
done

mkdir -p ~/.config/nvim/undos

for config in "${CONFFILES[@]}"; do
  mkdir -p ~/.config/${config}
  stow -v -d ${DOTFILES_DIR} $config -t ~/.config/${config}
done


for config in "${SNAPCONFS[@]}"; do
  mkdir -p "$HOME/snap/${config}"
  stow -v -d ${DOTFILES_DIR} $config -t "$HOME/snap/${config}/current/"
done

ln -s "${DOTFILES_DIR}/nougat/nougat" "$HOME/.config/"

mkdir -p ~/.ssh/connections
stow -v -d ${DOTFILES_DIR} ssh -t ~/.ssh

if [[ `uname` == 'Darwin' ]]; then
  stow -v -d ${DOTFILES_DIR} osx_prefernces -t ~/Library/Preferences
fi


cp $DOTFILES_DIR/dircolors $HOME/.dircolors


