
COCKROACH_VERSION="2.0.1"

header "Installing CockrouchDB..."



COCKROACH_BIN_PATH="$HOME/opt/cockroachdb/bin"
mkdir -p "$COCKROACH_BIN_PATH"



if [ -e "${COCKROACH_BIN_PATH}/cockroach" ]; then
  version=$(${COCKROACH_BIN_PATH}/cockroach version | grep 'Build Tag' | cut -d v -f 2)
else
  version="0"
fi

task "Downloading CockrouchDB version: ${COCKROACH_VERSION}" "wget -qO- https://binaries.cockroachdb.com/cockroach-v${COCKROACH_VERSION}.linux-amd64.tgz | tar  xvz -C /tmp" "$version" "${COCKROACH_VERSION}"

if [ $version != $COCKROACH_VERSION ]; then
  mv "/tmp/cockroach-v${COCKROACH_VERSION}.linux-amd64/cockroach" "$COCKROACH_BIN_PATH"
  rm -rf "/tmp/cockroach-v${COCKROACH_VERSION}.linux-amd64/cockroach"
fi

# TODO
#task "Add ${COCKROACH_BIN_PATH} to \$PATH" "echo \"export PATH=\$PATH:${COCKROACH_BIN_PATH}\" | tee \"$HOME/.zsh/paths/cockroach.zsh\"" "$HOME/.zsh/paths/cockroach.zsh"
#export PATH=$PATH:${COCKROACH_BIN_PATH}
