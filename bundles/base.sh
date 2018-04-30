APT_PACKAGES=(git zsh curl wget stow python3 \
  make snapd linux-tools-common linux-tools-generic \
  software-properties-common)

NIX_PACKAGES=()

SNAP_PACKAGES=()
SNAP_CLASSIC_PACKAGES=()

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

header "Configure system..."
task "Link config files" "$SCRIPT_DIR/link_config.sh"


