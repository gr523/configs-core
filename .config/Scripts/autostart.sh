#!/bin/sh

run() {
    [ $(pgrep -u ${USER} ${1}) ] || ${1} & disown
}

nitrogen --set-zoom-fill ~/.config/wallpaper.jpeg
xinput disable "AT Translated Set 2 keyboard"
xmodmap -e 'keycode 108=Escape'
run picom
run lxpolkit 
run nm-applet
run redshift
