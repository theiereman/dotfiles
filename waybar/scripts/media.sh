#!/bin/bash

playerctl status &> /dev/null || exit

status=$(playerctl status)
if [ "$status" = "Playing" ]; then
    artist=$(playerctl metadata artist)
    title=$(playerctl metadata title)
    echo "$artist - $title"
elif [ "$status" = "Paused" ]; then
    echo "Paused"
else
    echo ""
fi
