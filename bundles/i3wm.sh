APT_PACKAGES=()

NIX_PACKAGES=()

# -----------------------------------------------------------------------

header "Installing and setup i3wm..."

# TODO instal i3wm?

task "Clone i3 assistance scripts" "git clone https://github.com/budRich/i3ass.git $OPT/i3ass" "$OPT/i3ass"
task "Install i3 assistance scripts" "cd $OPT/i3ass && git pull && ./install.sh -q $HOME/bin"
