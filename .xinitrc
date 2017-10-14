#!/bin/sh

setxkbmap -layout pl &
wallpaper &
compton &
bar &
redshift &
juiced -d &
# urxvtd -q -f -o & # now i'm using st

exec openbox-session