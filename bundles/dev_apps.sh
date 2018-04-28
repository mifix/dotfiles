APT_PACKAGES=(zeal)

APT_PPA_REPOSITORIES=()

SNAP_CLASSIC_PACKAGES=(gitkraken)

# -----------------------------------------------------------------------

header "Installing development desktop applications..."

install_packages "APT"
install_packages "SNAP"
install_packages "SNAP-CLASSIC"

