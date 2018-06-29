#!/bin/sh

xmodmap ~/.Xmodmap &
setxkbmap -layout pl &
wallpaper &
compton &
bar &
redshift &
juiced -d &
# urxvtd -q -f -o & # now i'm using st

exec openbox-session
