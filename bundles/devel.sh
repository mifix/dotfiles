APT_PACKAGES=()

NIX_PACKAGES=()

# -----------------------------------------------------------------------

header "Install devel stuff"

task "Install diff-so-fancy" "git clone https://github.com/so-fancy/diff-so-fancy.git $OPT/diff-so-fancy" "$OPT/diff-so-fancy"
