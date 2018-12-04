#!/bin/sh

setxkbmap -layout pl -option caps:escape &
wallpaper &
compton &
bar &
redshift &
juiced -d &
# urxvtd -q -f -o & # now i'm using st

exec openbox-session
#exec dwm
