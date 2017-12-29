
# check for custom bin directory and add to path
if [[ -d ~/bin ]]; then
    export PATH=~/bin
fi

[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh


# GO
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# Nodejs
export PATH=$PATH:./node_modules/.bin
