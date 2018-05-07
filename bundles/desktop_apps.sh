APT_PACKAGES=(materia-gtk-theme arc-theme numix-gtk-theme numix-icon-theme papirus-icon-theme \
  pcmanfm ranger mpv youtube-dl lightdm-gtk-greeter-settings scrot)

APT_PPA_REPOSITORIES=()

SNAP_CLASSIC_PACKAGES=()

# -----------------------------------------------------------------------

header "Installing Desktop applications..."


install_packages "APT"
install_packages "SNAP"
install_packages "SNAP-CLASSIC"


mkdir -p "$OPT/bin"
task "Installing screenshot helper (nougat)" "wget -q -O $OPT/bin/nougat https://raw.githubusercontent.com/Sweets/nougat/master/nougat.sh" "$OPT/bin/nougat"
chmod +x $OPT/bin/nougat
