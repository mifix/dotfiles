# Install  Nerdfonts http://nerdfonts.com/

NERD_FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/"


if [ -z $1 ]; then
  echo "Font name missing."
  echo "Usage: $0 font_name"
  exit 1
fi

font=$1

FONT_DIR="$HOME/.local/share/fonts"

mkdir -p "$FONT_DIR"
cd "$FONT_DIR"

mkfontdir
mkfontscale


wget -q "${NERD_FONT_URL}/${font}.zip"
unzip -o -qq "${font}.zip" && rm -f "${font}.zip"

touch ".${font}_installed"

sleep 2
