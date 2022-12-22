#!/usr/bin/env bash

if [[ ! -d "$HOME/.config/gtk-4.0" ]]; then
    mkdir -p $HOME/.config/gtk-4.0
fi

ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0/assets $HOME/.config/gtk-4.0/assets
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0/gtk-dark.css $HOME/.config/gtk-4.0/gtk-dark.css
ln -sf $HOME/.themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0/gtk.css $HOME/.config/gtk-4.0/gtk.css

sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Catppuccin-Latte-Standard-Blue-Light --system
