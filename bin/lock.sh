#!/bin/sh

IMAGE=/tmp/screen.png
# TEXT=/tmp/lock_text.png
ICON=$HOME/bin/lock.png

revert() {
  xset dpms 0 0 0
  rm -f /tmp/screen.png /tmp/lock_text.png
}
trap revert HUP INT TERM

xset +dpms dpms 5 5 5




# scrot /tmp/screen.png
# convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
# convert /tmp/screen.png $HOME/bin/lock.png -gravity center -composite -matte /tmp/screen.png
# dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

scrot $IMAGE
convert $IMAGE -scale 10% -scale 1000% -fill black -colorize 50% $IMAGE

[ -f $TEXT ] || {
    convert -size 3000x60 xc:white -font Liberation-Sans -pointsize 26 -fill black -gravity center -annotate +0+0 'Type password to unlock' $TEXT;
    convert $TEXT -alpha set -channel A -evaluate set 50% $TEXT;
}
convert $IMAGE $TEXT -gravity center -geometry +0+200 -composite $IMAGE
convert $IMAGE $ICON -gravity center -composite -matte $IMAGE

i3lock -n -f -u -i $IMAGE


revert
