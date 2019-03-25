APT_PPA_REPOSITORIES=(neovim-ppa/stable)

APT_PACKAGES=(tmux htop aria2 fasd keychain \
  exuberant-ctags neovim python-dev python-pip python3-dev python3-pip atool)

NIX_PACKAGES=()

SNAP_PACKAGES=()
SNAP_CLASSIC_PACKAGES=(ripgrep)


LOGIN_SHELL="zsh"


# -----------------------------------------------------------------------------------

sudo echo

header "Installing software..."

task "Updating repositories" "sudo apt -q update"
install_packages "APT"

if [ ! -z $NIX_PACKAGES ]; then
  # task "Installing nix package manager" "bash <(curl -s https://nixos.org/nix/install)" "/nix"
  # source $HOME/.nix-profile/etc/profile.d/nix.sh

  install_packages "NIX"
fi


install_packages "SNAP"
install_packages "SNAP-CLASSIC"

task "Set ripgrep symlink" "sudo snap alias ripgrep.rg rg" "$(snap aliases | grep -c ripgrep.rg)" "1"

task "Downloading zplug" "git clone https://github.com/zplug/zplug.git $HOME/.zplug" "$HOME/.zplug"
task "Downloading base16 colors" "git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell" "$HOME/.config/base16-shell"
task "Downloading gruvbox colors" "git clone https://github.com/morhetz/gruvbox-contrib $HOME/.config/gruvbox-contrib" "$HOME/.config/gruvbox-contrib"


header "Configure system..."
task "Link config files" "$SCRIPT_DIR/link_config.sh"

task "Set $LOGIN_SHELL as default shell" "sudo chsh -s $(which $LOGIN_SHELL) $USERNAME" "$(getent passwd $USERNAME | cut -d: -f7)" "$(which $LOGIN_SHELL)"

task "Install or upgrade neovim python plugin..." "sudo pip3 install --upgrade neovim"

