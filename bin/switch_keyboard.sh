#!/bin/bash


VARIANT_1=us
VARIANT_2=de


current_layout=`setxkbmap -query | grep layout | awk '{print $2}'`

if [ $current_layout = $VARIANT_1 ]; then
  setxkbmap $VARIANT_2
  notify-send "$VARIANT_2"
else
  setxkbmap $VARIANT_1
  notify-send "$VARIANT_1"
fi
