APT_PACKAGES=(gcc)

# -----------------------------------------------------------------------

header "Installing Rust..."

install_packages "APT"



task "Downloading rustup" "curl https://sh.rustup.rs -sSf | sh -s -- -y" "$HOME/.cargo/bin/rustup"

task "Add nightly toolchain" "rustup update nightly" "$(rustup toolchain list | grep nightly)" "nightly-x86_64-unknown-linux-gnu"

# install tools for RLS
components=(rls-preview rust-analysis rust-src)
for comp in ${components[@]};do
  task "Add component $comp" "rustup component add $comp --toolchain nightly" "$(rustup component list --toolchain nightly | grep $comp | grep -c installed)" "1"
done
