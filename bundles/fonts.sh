
NERD_FONTS=(RobotoMono Hack ProFont)

# -----------------------------------------------------------------------

header "Installing fonts..."

FONT_DIR="$HOME/.local/share/fonts"
_did_install_font=false


for font in "${NERD_FONTS[@]}"; do
  if [ ! -e "$FONT_DIR/.${font}_installed" ]; then
    _did_install_font=true
  fi
  task "Installing font $font" "install_nerd_font.sh $font" "$FONT_DIR/.${font}_installed"
done



if [ $_did_install_font = true ]; then
  task "Updating font cache" "fc-cache -f"
fi
