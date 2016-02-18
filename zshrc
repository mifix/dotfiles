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
export PATH=$PATH:~/bin:~/.local/bin:~/Software/packer:~/Software/icdiff
#eval "$(rbenv init -)"

alias v="vagrant"
alias open="xdg-open"
alias d="docker"
alias dc="docker-compose"
alias ssh="LC_ALL=en_US.UTF-8 ssh"
alias hosts="sudo vim /etc/hosts"

export EDITOR=vim
export VISUAL=vim
#alias remove_key="ssh-keygen -f ~/.ssh/known_hosts -R"


export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local file
  file=$(fzf-tmux --query="$1" --select-1 --exit-0)
  [ -n "$file"   ] && ${EDITOR:-vim} "$file"
}
# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local out file key
  out=$(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e)
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# fbr - checkout git branch (including remote branches)
fbr() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

if [[ "$COLORTERM" == "xfce4-terminal" ]]; then
  export TERM=xterm-256color
fi

autoload bashcompinit
bashcompinit

source /opt/sneezy/sneezy_env.sh

alias av="ansible-vault --vault-password-file ~/.vault-pass.txt"

export GOPATH=~/Work/Workspace/go

keychain -q $HOME/.ssh/id_rsa
source ~/.keychain/`hostname`-sh

