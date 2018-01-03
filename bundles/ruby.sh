APT_PACKAGES=()

NIX_PACKAGES=(ruby bundler)


# -----------------------------------------------------------------------

header "Installing Ruby..."

install_packages "APT"
install_packages "NIX"
