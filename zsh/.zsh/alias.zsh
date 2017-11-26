alias ch="builtin cd $HOME"

alias v="$EDITOR"

# Verbose copying with no auto-correct.
alias cp="nocorrect cp -v"              

# Enable human-readable output.
alias df="df -h"                        

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

# Verbose moving with no auto-correct.
alias mv="nocorrect mv -v"              

# Verbose removing with no auto-correct.
alias rm="nocorrect rm -v"              

if type exa > /dev/null; then
  alias l='exa -abghl --git --color=automatic'
else
  alias l='ls -lAh --color=auto'
fi


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