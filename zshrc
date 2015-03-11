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

# Customize to your needs...

fpath=("$HOME/.dotfiles/zsh/pass.zsh-completion" $fpath)

#export PATH=$PATH:~/bin:~/.rbenv/bin:~/Software/packer
export PATH=$PATH:~/bin:~/Software/packer:~/Software/icdiff
#eval "$(rbenv init -)"

alias v="vagrant"
alias open="xdg-open"
alias d="docker"

export EDITOR=vim
alias remove_key="ssh-keygen -f ~/.ssh/known_hosts -R"


# source ~/.fzf.zsh
#
# fe() {
#   local file
#   file=$(fzf --query="$1" --select-1 --exit-0)
#   [ -n "$file"   ] && ${EDITOR:-vim} "$file"
# }

if [[ "$COLORTERM" == "xfce4-terminal" ]]; then
  export TERM=xterm-256color
fi

autoload bashcompinit
bashcompinit

source /opt/sneezy/sneezy_env.sh
