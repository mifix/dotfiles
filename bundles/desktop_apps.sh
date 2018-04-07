APT_PACKAGES=(materia-gtk-theme arc-theme numix-gtk-theme numix-icon-theme papirus-icon-theme \
  pcmanfm ranger)

APT_PPA_REPOSITORIES=()

SNAP_CLASSIC_PACKAGES=(gitkraken)

# -----------------------------------------------------------------------

header "Installing Desktop applications..."



install_packages "APT"
install_packages "SNAP"
install_packages "SNAP-CLASSIC"

