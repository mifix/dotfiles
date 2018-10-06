APT_PACKAGES=(qemu-kvm libvirt-bin virt-manager libguestfs-tools \
  ubuntu-vm-builder bridge-utils qemu-utils)

# -----------------------------------------------------------------------

header "Installing virtualizations programs..."

install_packages "APT"

