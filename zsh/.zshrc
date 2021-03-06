

integer t0=$(date '+%s') # start time
t00=$(date "+%s.%N")
#zmodload zsh/zprof

# Shell color
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

if [[ $(hostname) == 'primrose' ]];then
  eval "$(~/bin/starship init zsh)"
elif [[ $(hostname) == 'plutarch' ]];then
  # base16_mocha
  base16_ia-light
elif [[ $(hostname) == 'wth-kiste' ]];then
  base16_gruvbox-dark-medium
elif [[ -e ~/.is_sneezy ]]; then
  base16_snazzy
fi

# if [[ -e $HOME/.ssh/id_rsa ]];then
# 	eval `keychain --eval --quiet --agents ssh id_rsa`
# fi

# add before compinit
fpath+=~/.zfunc
autoload -U _rustup

export DOTFILE_DIR=$HOME/.dotfiles
export ZSH_DIR=$HOME/.zsh

source ~/.zplugrc

# source all .zsh files inside of the zsh/ directory
for config ($ZSH_DIR/**/*.zsh) source $config

source $ZSH_DIR/completion.zsh.last

# zprof
function {
    local -i t1 startup
    t1=$(date '+%s')
    startup=$(( t1 - t0 ))
    [[ $startup -gt 1 ]] && print "Hmm, poor shell startup time: $startup"
}
unset t0

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

t01=$(date "+%s.%N")
# echo $((t01 - t00))

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
