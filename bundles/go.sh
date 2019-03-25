APT_PACKAGES=()

SNAP_CLASSIC_PACKAGES=(go)

GO_PACKAGES=(github.com/nsf/gocode github.com/sourcegraph/go-langserver github.com/saibing/bingo)

# -----------------------------------------------------------------------

header "Installing Go..."

install_packages "SNAP-CLASSIC"

if [[ -z $GOPATH ]];then
  gp="$HOME/Projects/go"
  task "Create GOPATH ($gp)" "mkdir -p $gp/bin" $gp
  export GOPATH=$gp
else
  task "Create GOPATH ($GOPATH)" "mkdir -p $GOPATH/bin" $GOPATH
fi


install_packages "GO"
