# for racer
APT_PACKAGES=(gcc libssl-dev build-essential cmake pkg-config zlib1g-dev libssl-dev)

# -----------------------------------------------------------------------

header "Installing Rust..."

install_packages "APT"



task "Downloading rustup" "curl https://sh.rustup.rs -sSf | sh -s -- -y" "$HOME/.cargo/bin/rustup"

task "Add nightly toolchain" "rustup update nightly" "$(rustup toolchain list | grep nightly | awk '{print $1}')" "nightly-x86_64-unknown-linux-gnu"


# install tools for RLS
components=(rls-preview rust-analysis rust-src rustfmt-preview)
for comp in ${components[@]};do
  task "Add component $comp" "rustup component add $comp --toolchain nightly" "$(rustup component list --toolchain nightly | grep $comp | grep -c installed)" "1"
done


# install crates
crates=(racer)
for crate in ${crates[@]};do
  task "Add crate $crate" "cargo +nightly install $crate" "$HOME/.cargo/bin/${crate}"
done


task "Set default toolchain to nightly" "rustup default nightly" "$(rustup toolchain list | grep -c "nightly.*default")" "1"
