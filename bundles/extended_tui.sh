

# -----------------------------------------------------------------------------------


header "Installing extended command line apps..."


task "Downloading and installing bat" "wget -q -O /tmp/bat.deb https://github.com/sharkdp/bat/releases/download/v0.4.1/bat_0.4.1_amd64.deb && sudo dpkg -i /tmp/bat.deb" "/usr/bin/bat"
