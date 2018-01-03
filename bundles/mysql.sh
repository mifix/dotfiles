APT_PACKAGES=(mariadb-server mariadb-client)

NIX_PACKAGES=()


# ----------------------------------------------------------------------------



header "Installing MySQL..."

install_packages "APT"
# install_packages "NIX"


DB_USER="sneezy"
DB_PASSWD="sneezy"

SQL="CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWD';\n
GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'localhost';\n
FLUSH PRIVILEGES;
";

DROP_SQL="DROP USER IF EXISTS '$DB_USER'@'localhost';"

task "Creating user $DB_USER" "echo \"${SQL}\" | sudo mysql -uroot"
# task "Removing user $DB_USER" "echo \"${DROP_SQL}\" | sudo mysql -uroot"


unset DB_USER DB_PASSWD
