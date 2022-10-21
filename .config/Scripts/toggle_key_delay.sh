#!/bin/sh

repeat_rate=$(xset q | grep  "repeat rate" | sed -E 's/.*repeat rate:\s*([0-9]+)/\1/')

if [ "${repeat_rate}" -lt 30 ]; then
    xset r rate 210  35
else
    xset r rate 660 25
fi
