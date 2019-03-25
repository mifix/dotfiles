APT_PPA_REPOSITORIES=(amanusk/python-s-tui)

APT_PACKAGES=(python3-s-tui)

# -----------------------------------------------------------------------------------


header "Installing extended command line apps..."

install_packages "APT"


BAT_VERSION=0.7.1
BAT_CURRENT_VERSION=$(bat --version 2>/dev/null | awk '{ print $2 }')
BAT_INSTALL_CMD="wget -q -O /tmp/bat.deb https://github.com/sharkdp/bat/releases/download/v$BAT_VERSION/bat_$BAT_VERSION_amd64.deb && sudo dpkg -i /tmp/bat.deb"
task "Downloading and installing bat version $BAT_VERSION" "${BAT_INSTALL_CMD}" $BAT_CURRENT_VERSION $BAT_VERSION
