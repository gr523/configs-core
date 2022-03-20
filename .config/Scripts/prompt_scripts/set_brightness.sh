#!/bin/sh

echo -e "25\n35\n50\n75\n90\n100" | dmenu -l 6 -p "Set Brightness" | xargs -I {} brightnessctl -d ${BACKLIGHT_DEVICE} set {}% 
