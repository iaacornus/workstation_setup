#!/usr/bin/env bash

$HOME/.sys/./backup-general.sh

echo -e "\033[1m[>] Executing full system upgrade\033[0m"
echo -e ">>> Updating base system image via: \033[36mrpm-ostree upgrade\033[0m"
rpm-ostree upgrade
echo -e ">>> Updating user applications via: \033[36mflatpak update\033[0m"
flatpak update

echo -e "\033[1;32m[+] Successfully upgraded the system\033[0m"
