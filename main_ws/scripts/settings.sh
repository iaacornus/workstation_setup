#!/usr/bin/env bash

$HOME/.local/bin/./sync.sh # sync first
cp -r $HOME/.local/share/config/code/* $HOME/.config/Code/User/
cp -r $HOME/.local/share/config/rstudio/* $HOME/.config/rstudio/
