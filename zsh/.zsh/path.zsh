
# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
    export PATH=~/bin:$HOME/.cargo/bin:$PATH
fi

[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh
