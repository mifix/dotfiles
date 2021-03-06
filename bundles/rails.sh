
include_bundles "ruby" "node"

# -----------------------------------------------------------------------

APT_PACKAGES=(libpq-dev libsqlite3-dev)

NPM_PACKAGES=(yarn)

GEM_PACKAGES=(rails)

# -----------------------------------------------------------------------

header "Installing Ruby on Rails..."

install_packages "APT"
install_packages "NPM"
install_packages "GEM"
