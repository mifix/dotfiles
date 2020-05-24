APT_PPA_REPOSITORIES=(ansible/ansible)

APT_PACKAGES=(ansible)

# -----------------------------------------------------------------------

header "Installing Ansible..."


install_packages "APT"


task "Installing molecule" "pip2 install --user molecule" "$HOME/.local/bin/molecule"
task "Installing ansible-generator" "pip2 install --user ansible-generator" "$HOME/.local/bin/ansible-generate"
