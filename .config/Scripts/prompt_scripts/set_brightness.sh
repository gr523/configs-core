#!/bin/sh

echo -e "100\n90\n75\n50\n35\n25" | dmenu -l 6 -p "Set Brightness" | xargs -I {} brightnessctl -d ${BACKLIGHT_DEVICE} set {}% 
