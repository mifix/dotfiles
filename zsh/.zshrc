
# Shell color
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

base16_mocha



source ~/.zplugrc



# use bash completions
autoload -Uz bashcompinit
bashcompinit -i

# use bash completions
autoload -Uz bashcompinit
bashcompinit -i

# LS_COLORS
eval $(dircolors -b $HOME/.dotfiles/dircolors)

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
