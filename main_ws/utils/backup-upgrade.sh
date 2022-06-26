#!/usr/bin/env bash
echo -e "\033[1m[>] Creating a backup of \033[36m$HOME/Documents\033[0m\033[1m and \033[36m$HOME/Development\033[0m\033[1m in \033[36m$HOME/Storage/backup\033[0m"

# ------------------------------------------------------------------------------------------------
# base dir
if [ ! -d $HOME/Storage/backup ]; then
	echo -e "\033[31m!>> Backup location: \033[0m$HOME/Storage/backup\033[31m does not exists!\033[0m"
	echo -e ">>> Creating backup location at \033[36m$HOME/Storage/backup\033[0m"
	mkdir $HOME/Storage/backup
fi

if [ ! -d $HOME/Storage/backup_prev ]; then
	echo -e "\033[31m!>> Backup location: \033[0m$HOME/Storage/backup_prev\033[31m does not exists!\033[0m"
	echo -e ">>> Creating backup location at \033[36m$HOME/Storage/backup_prev\033[0m"
	mkdir $HOME/Storage/backup_prev
fi

# ------------------------------------------------------------------------------------------------
# remove old backups of current backups
if [ -d $HOME/Storage/backup_prev/Documents ]; then
	echo -e ">>> Removing the previous backup of \033[36m$HOME/Documents\033[0min \033[36m$HOME/Storage/backup_prev/Documents\033[0m"
	rm -rf -v $HOME/Storage/backup_prev/Documents
fi

if [ -d $HOME/Storage/backup_prev/Development ]; then
	echo -e ">>> Removing the previous back of \033[36m$HOME/Development\033[0m in \033[36$HOME/Storage/backup_prev/Development\033[0m"
	rm -rf -v $HOME/Storage/backup_prev/Development
fi

if [ -d $HOME/Storage/backup_prev/gpg ]; then
	echo -e ">>> Removing the previous back of \033[36m$HOME/gpg\033[0m in \033[36$HOME/Storage/backup_prev/gpg\033[0m"
    rm -rf -v $HOME/Storage/backup_prev/gpg
fi

# ------------------------------------------------------------------------------------------------
# back up current backups
if [ -d $HOME/Storage/backup/Documents ]; then
	echo -e ">>> Creating a copy of the previous backup of \033[36m$HOME/Storage/backup/Documents\033[0m in \033[36m$HOME/Storage/backup_prev/Documents\033[0m"
	mv -v $HOME/Storage/backup/Documents $HOME/Storage/backup_prev/Documents
fi

if [ -d $HOME/Storage/backup/Development ]; then
	echo -e ">>> Creating a copy of the previous backup of \033[36m$HOME/Storage/backup/Development\033[0m in \033[36m$HOME/Storage/backup_prev/Development\033[0m"
	mv -v $HOME/Storage/backup/Development $HOME/Storage/backup_prev/Development
fi

if [ -d $HOME/Storage/backup/gpg ]; then
	echo -e ">>> Creating a copy of the previous backup of \033[36m$HOME/Storage/backup/gpg\033[0m in \033[36m$HOME/Storage/backup_prev/gpg\033[0m"
	mv -v $HOME/Storage/backup/gpg $HOME/Storage/backup_prev/gpg
fi

# ------------------------------------------------------------------------------------------------
# backup location for gpg keys
if [ ! -d $HOME/Storage/backup/gpg ]; then
    echo -e "\033[31m!>> Backup location: \033[0m$HOME/Storage/backup/gpg\033[31m does not exists!\033[0m"
    echo -e ">>> Creating backup location at \033[36m$HOME/Storage/backup/gpg\033[0m"
    mkdir $HOME/Storage/backup/gpg
fi

# ------------------------------------------------------------------------------------------------
# backup current files
echo -e ">>> Copying \033[36m$HOME/Documents\033[0m to \033[36m$HOME/Storage/backup/Documents\033[0m"
cp -r -v $HOME/Documents $HOME/Storage/backup/Documents
echo -e ">>> Copying \033[36m$HOME/Documents\033[0m to \033[36m$HOME/Storage/backup/Development\033[0m"
cp -r -v $HOME/Development $HOME/Storage/backup/Development

echo -e "\033[1;32m[+] Successfully backing up the important files\033[0m"

echo -e "\033[1m[>] Backing up the GPG keys in: \033[36m$HOME/Storage/backup/gpg\033[0m"
echo -e ">>> Creating tarball of \033[36m$HOME/.gnupg\033[0m in \033[36m$HOME/Storage/backup/gpg\033[0m"
tar -cvpzf $HOME/Storage/backup/gpg/gnupg.tar.gz $HOME/.gnupg

echo -e ">>> Exporting public keys in \033[36m$HOME/Storage/backup/gpg\033[0m"
gpg --export --output $HOME/Storage/backup/gpg/public_keys

echo -e ">>> Exporting secret keys in \033[36m$HOME/Storage/backup/gpg\033[0m"
gpg --export-secret-keys --output $HOME/Storage/backup/gpg/secret_keys

echo -e ">>> Exporting trustdb in \033[36m$HOME/Storage/backup/gpg\033[0m"
gpg --export-ownertrust > $HOME/Storage/backup/gpg/trustdb

echo -e "\033[1;32m[+] Successfully exported the GPG keys\033[0m"

echo -e "\033[1m[>] Executing full system upgrade\033[0m"
echo -e ">>> Updating base system image via: \033[36mrpm-ostree upgrade\033[0m"
rpm-ostree upgrade
echo -e ">>> Updating user applications via: \033[36mflatpak update\033[0m"
flatpak update

echo -e "\033[1;32m[+] Successfully upgraded the system\033[0m"
