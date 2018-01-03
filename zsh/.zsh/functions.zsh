# Create a new directory and enter it
function md() {
  [[ -n ${1} ]] && mkdir -p ${1} && builtin cd ${1}
}

function edit_alias() {
  $EDITOR $HOME/.zsh/alias.zsh && source $HOME/.zsh/alias.zsh
}

#
# File Downloads
#

# order of preference: aria2c, axel, wget, curl. This order is derrived from speed based on personal tests.
if (( ${+commands[aria2c]} )); then
  alias get='aria2c --max-connection-per-server=5 --continue'
elif (( ${+commands[axel]} )); then
  alias get='axel --num-connections=5 --alternate'
elif (( ${+commands[wget]} )); then
  alias get='wget --continue --progress=bar --timestamping'
elif (( ${+commands[curl]} )); then
  alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
fi
