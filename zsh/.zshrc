integer t0=$(date '+%s') # start time
#zmodload zsh/zprof

# Shell color
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

base16_mocha

eval `keychain --eval --quiet --agents ssh id_rsa`

# add before compinit
fpath+=~/.zfunc

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
