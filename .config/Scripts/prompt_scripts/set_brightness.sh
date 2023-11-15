#!/bin/bash

echo -e "100\n90\n80\n50\n35\n25" | dmenu -l 6 -p "Set Brightness" | xargs -I {} brightnessctl set {}% 
