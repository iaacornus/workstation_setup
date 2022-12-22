#!/usr/bin/env bash

dir=("$HOME/.config/gtk-4.0" "$HOME/.config/environment.d")
THEME_DIR=".themes/Catppuccin-Latte-Standard-Blue-Light/gtk-4.0"

for d in ${dir[@]}; do
    if [ ! -d "$d" ]; then
        mkdir -p $d
    fi
done

echo "export GTK_THEME=Catppuccin-Latte-Standard-Blue-Light" >> $HOME/.profile
echo "GTK_THEME=Catppuccin-Latte-Standard-Blue-Light" >> $HOME/.config/environment.d/gtk_theme.conf
echo "GTK_THEME=Catppuccin-Latte-Standard-Blue-Light" >> $HOME/.config/gtk-4.0/settings.ini

ln -sf $HOME/$THEME_DIR/assets $HOME/.config/gtk-4.0/assets
ln -sf $HOME/$THEME_DIR/gtk-dark.css $HOME/.config/gtk-4.0/gtk-dark.css
ln -sf $HOME/$THEME_DIR/gtk.css $HOME/.config/gtk-4.0/gtk.css

sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Catppuccin-Latte-Standard-Blue-Light --system
