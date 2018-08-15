#!/bin/bash

# if [ ! $1 ]; then
#   echo "Argument missing."
#   exit 1
# fi

function run() {
  xdotool type "$1"
  xdotool key Return
}


# Get active window
original=$(xdotool getactivewindow)

# Find terminal with title 'Magic-Term'
# Use only first match in case of multiple terminals
term=$(xdotool search --name Magic-Term | head -n 1)


if [ ! $term ]; then
  echo "Could not find terminal with title 'Magic-Term'."
  echo "e.g. start with $ termite -t Magic-Term"
  exit 1
fi

# echo "----------------" >> ~/tmp/log
# echo $1 >> ~/tmp/log


xdotool windowfocus --sync $term

if [ $1 == "run" ];then
  xdotool key Return
  xdotool key Return
  run "clear"
  run "cargo run"
elif [ $1 == "test" ]; then
  xdotool key Return
  xdotool key Return
  run "clear"
  run "cargo test"
fi


xdotool windowfocus --sync $original
