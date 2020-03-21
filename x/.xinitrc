#!/bin/sh

setxkbmap -layout pl -option caps:escape &
wallpaper &
compton &
dunst &
bar &
redshift &
juiced -d &
emacs --daemon=startup
# urxvtd -q -f -o & # now i'm using st

#exec openbox-session
exec i3
#exec dwm
