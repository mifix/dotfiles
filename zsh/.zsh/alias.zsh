if (( ${+commands[rg]} )); then
  alias -g G=' | rg'
else
  alias -g G=' | grep --color'
fi

alias -g L=' | less'

alias au='sudo apt update && sudo apt full-upgrade -V'
alias ai='sudo apt install -y'


if (( ${+commands[aria2c]} )); then
  alias yt='youtube-dl -f mp4 --external-downloader aria2c'
  alias ytn='youtube-dl --no-check-certificate -f mp4 --external-downloader aria2c'
else
  alias yt='youtube-dl -f mp4'
  alias ytn='youtube-dl --no-check-certificate -f mp4'
fi

alias edit_i3='e ~/.config/i3/config && i3-msg reload'
alias edit_sway='e ~/.config/sway/config && i3-msg reload'
alias swm='swaymsg'

alias ch="builtin cd $HOME"

alias e="nvim"
export VIDIR_EDITOR_ARGS='-c :set nolist | :set ft=vidir-ls'

alias open="xdg-open"

alias issh="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

# Verbose copying with no auto-correct.
alias cp="nocorrect cp -v"

# Enable human-readable output.
alias df="df -h"

# Bat - cat clone with wings
alias c="bat"

# Use the Ncdu tool instead of du.
#alias du='ncdu'

# Show color and line numbers for match.
alias grep="grep -n --color"

# Show only my processes.
alias ht="htop -u $(whoami)"

# Colorize listing output, append indicator
alias ls="ls --color -F"

# No auto-correct when making directory.
alias mkdir='nocorrect mkdir'

# Moving with no auto-correct.
alias mv="nocorrect mv"

# Removing with no auto-correct.
alias rm="nocorrect rm"

if type exa > /dev/null; then
  alias l='exa -abghl --git --color=automatic'
else
  alias l='ls -lAh --color=auto'
fi

# get public ip
alias get_ip="wget http://ipecho.net/plain -O - -q ; echo"

# if pigz/pbzip2 are available, alias them as they are drop-in replacements for gzip and bzip2, respectively.

#
# pigz
#

if (( ${+commands[pigz]} )); then
  alias gzip='pigz'
fi

if (( ${+commands[unpigz]} )); then
  alias gunzip='unpigz'
fi

#
# pbzip2
#

if (( ${+commands[pbzip2]} )); then
  alias bzip2='pbzip2'
fi

if (( ${+commands[pbunzip2]} )); then
  alias bunzip2='pbunzip2'
fi

# Ranger
alias r="ranger"

# Docker
alias d="docker"
alias dc="docker-compose"

# Kubernetes
alias k="kubectl"

# virsh & co
alias sv="sudo virsh"

# Ruby/Rails
alias bi="bundler install -j `nproc`"
alias rs='rails server'


