#!/usr/bin/env bash

current_time=$(date +%H:%M)

wallpaper="am_$(shuf -i1-3 -n1).jpg"
if [[ "$current_time" > "14:00" ]]; then
    wallpaper="nn_$(shuf -i1-2 -n1).jpg"
elif [[ "$current_time" > "22:00" ]]; then
    wallpaper="pm_$(shuf -i1-2 -n1).jpg"
fi

gsettings set org.gnome.desktop.background picture-uri file:///$HOME/Pictures/wallpaper/$wallpaper
