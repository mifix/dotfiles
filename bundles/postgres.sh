APT_KEYS=(https://www.postgresql.org/media/keys/ACCC4CF8.asc)
APT_PPA_REPOSITORIES=()

APT_PACKAGES=(postgresql postgresql-contrib)

# -----------------------------------------------------------------------

header "Installing PostgreSQL..."


add_apt_keys
task "Add postgres repository" "sudo sh -c 'echo \"deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main\" >> /etc/apt/sources.list.d/postgres.list &&  apt-get -q update'" "/etc/apt/sources.list.d/postgres.list"
install_packages "APT"

