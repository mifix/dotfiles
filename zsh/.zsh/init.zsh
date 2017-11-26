# use bash completions
autoload -Uz bashcompinit
bashcompinit -i

# LS_COLORS
eval $(dircolors -b $HOME/.dotfiles/dircolors)

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}



# Don't beep, man
unsetopt beep notify

# Print an error when the filename pattern has no match.
setopt nomatch                          

# Report job status.
setopt notify                           

# Enable Vi/Emacs mode.
#bindkey -v                             
bindkey -e


# display how long all tasks over 10 seconds take
export REPORTTIME=10

# set the correct term with TMUX
if [[ -n "${TMUX}" ]]; then
  export TERM=screen-256color
else
  export TERM=xterm-256color
fi

# set editor to nvim if installed
if type nvim > /dev/null; then
  EDITOR=nvim
  VISUAL=nvim
else
  EDITOR=vim
  VISUAL=vim
fi