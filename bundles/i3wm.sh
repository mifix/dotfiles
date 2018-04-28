APT_PACKAGES=(i3blocks dunst rofi compton feh yad xdotool)

NIX_PACKAGES=()

# -----------------------------------------------------------------------

header "Installing and setup i3wm..."

install_packages "APT"

# TODO instal i3wm?
# See http://github.com/mifix/i3-gaps-deb-builder.git

mkdir -p "$OPT/bin"
task "Clone i3 assistance scripts" "git clone https://github.com/budRich/i3ass.git $OPT/i3ass" "$OPT/i3ass"
task "Install i3 assistance scripts" "cd $OPT/i3ass && git pull && ./install.sh -q $OPT/bin"

task "Add i3blocks scripts" "git clone https://github.com/vivien/i3blocks-contrib.git $OPT/i3blocks-contrib" "$OPT/i3blocks-contrib"

