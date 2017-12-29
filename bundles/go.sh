APT_PACKAGES=()

NIX_PACKAGES=(go)

GO_PACKAGES=(github.com/nsf/gocode)

# -----------------------------------------------------------------------

header "Installing Go..."

install_packages "APT"
install_packages "NIX"

if [[ -z $GOPATH ]];then
  gp="$HOME/Projects/go"
  task "Create GOPATH ($gp)" "mkdir -p $gp/bin" $gp
  export GOPATH=$gp
else
  task "Create GOPATH ($GOPATH)" "mkdir -p $GOPATH/bin" $GOPATH
fi


install_packages "GO"
