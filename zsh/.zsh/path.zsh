
export PATH=$PATH:~/bin

[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh


# GO
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# Nodejs
export PATH=$PATH:./node_modules/.bin
