#!/bin/sh

run() {
    [ $(pgrep -u ${USER} ${1}) ] || ${1} & disown
}

nitrogen --restore
xinput disable "AT Translated Set 2 keyboard"
xmodmap -e 'keycode 108=Escape'
exec picom &
exec lxpolkit & 
exec nm-applet &
exec redshift &
