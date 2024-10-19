#!/usr/bin/env bash

$HOME/.local/bin/./sync.sh # sync first
cp -r $HOME/.local/share/config/rstudio/keybindings/* $HOME/.config/rstudio/keybindings
cp $HOME/.local/share/config/rstudio/rstudio-prefs.json $HOME/.config/rstudio/rstudio-prefs.json
cp -r $HOME/.local/share/config/code/* $HOME/.config/Code/User/
