
[[ -d ~/bin ]] && export PATH=$PATH:~/bin
[[ -d ~/opt/bin ]] && export PATH=$PATH:~/opt/bin


[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh

# Snap
[[ -d /snap/bin ]] && export PATH=$PATH:/snap/bin


# GO
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# Rust
export PATH=$PATH:$HOME/.cargo/bin

# Nodejs
export PATH=$PATH:./node_modules/.bin

# Ruby
# if (( ${+commands[gem]} )); then
#   export PATH=$PATH:$(gem environment gemdir)/bin
# fi
