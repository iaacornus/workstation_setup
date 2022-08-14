#!/usr/bin/env bash

current_time=$(date +%H:%M)
guess=$(shuf -i1-2 -n1)

if [[ $guess -eq 2 ]]; then
    if [[ "$current_time" > "06:00" || "$current_time" == "06:00"  ]] && [[ "$current_time" < "12:00" ]]; then
        wallpaper="am_$(shuf -i1-8 -n1).jpg"
    elif [[ "$current_time" > "12:00" || "$current_time" == "12:00" ]] && [[ "$current_time" < "19:00" ]]; then
        wallpaper="pm_$(shuf -i1-8 -n1).jpg"
    elif [[ "$current_time" > "19:00" || "$current_time" == "19:00" ]] || [[ "$current_time" < "06:00" ]]; then
        wallpaper="gn_$(shuf -i1-8 -n1).jpg"
    fi
else
    wallpaper="main_$(shuf -i1-8 -n1).jpg"
fi

gsettings set org.gnome.desktop.background picture-uri file:///$HOME/Pictures/wallpaper/$wallpaper
gsettings set org.gnome.desktop.screensaver picture-uri file:///$HOME/Pictures/wallpaper/$wallpaper
