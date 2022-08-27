#!/usr/bin/env bash

current_time=$(date +%H:%M)

if [[ "$current_time" > "06:00" || "$current_time" == "06:00"  ]] && [[ "$current_time" < "12:00" ]]; then
    wallpaper="blobs-l.svg"
elif [[ "$current_time" > "19:00" || "$current_time" == "19:00" ]] || [[ "$current_time" < "06:00" ]]; then
    wallpaper="blobs-d.svg"
fi

gsettings set org.gnome.desktop.background picture-uri file:///$HOME/Pictures/Wallpapers/$wallpaper
gsettings set org.gnome.desktop.screensaver picture-uri file:///$HOME/Pictures/Wallpapers/$wallpaper
