#!/usr/bin/env bash
flatpak info --show-permissions com.google.Chrome
sudo flatpak override --system --nofilesystem=host --nofilesystem=host-etc --nofilesystem=xdg-music --nofilesystem=xdg-videos --nofilesystem=xdg-documents --nofilesystem=xdg-pictures --nodevice=all com.google.Chrome
