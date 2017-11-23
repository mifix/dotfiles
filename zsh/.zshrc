#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
base16_spacemacs

# Customize to your needs...
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh

alias open="xdg-open"
alias issh="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

export PATH=$PATH:$HOME/bin

export EDITOR=nvim
export VISUAL=nvim
export VIDIR_EDITOR_ARGS='-c :set nolist | :set ft=vidir-ls'


source $HOME/.dotfiles/dircolors_source
