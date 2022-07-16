#!/usr/bin/env bash

current_time=$(date +%H:%M)

wallpaper="am.jpg"
if [[ "$current_time" > "14:00" ]]; then
    wallpaper="nn.jpg"
elif [[ "$current_time" > "22:00" ]]; then
    wallpaper="pm.jpg"
fi

gsettings set org.gnome.desktop.background picture-uri file:///$HOME/Pictures/wallpaper/$wallpaper
