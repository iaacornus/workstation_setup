#!/usr/bin/env bash

echo -e "\033[34mINFO\033[0m\t Creating a backup of \033[36m$HOME/Documents\033[0m\033[0m and \033[36m$HOME/Development\033[0m in \033[36m$HOME/Storage/backup\033[0m ..."

# ------------------------------------------------------------------------------------------------
# base dir
if [ ! -d $HOME/Storage/backup ]; then
	mkdir $HOME/Storage/backup
fi

if [ ! -d $HOME/Storage/backup_prev ]; then
	mkdir $HOME/Storage/backup_prev
fi

# ------------------------------------------------------------------------------------------------
# remove old backups of current backups
if [ -d $HOME/Storage/backup_prev/Documents ]; then
	rm -rf -v $HOME/Storage/backup_prev/Documents
fi

if [ -d $HOME/Storage/backup_prev/Development ]; then
	rm -rf -v $HOME/Storage/backup_prev/Development
fi

if [ -d $HOME/Storage/backup_prev/gpg ]; then
    rm -rf -v $HOME/Storage/backup_prev/gpg
fi

# ------------------------------------------------------------------------------------------------
# back up current backups
if [ -d $HOME/Storage/backup/Documents ]; then
	mv -v $HOME/Storage/backup/Documents $HOME/Storage/backup_prev/Documents
fi

if [ -d $HOME/Storage/backup/Development ]; then
	mv -v $HOME/Storage/backup/Development $HOME/Storage/backup_prev/Development
fi

if [ -d $HOME/Storage/backup/gpg ]; then
	mv -v $HOME/Storage/backup/gpg $HOME/Storage/backup_prev/gpg
fi

# ------------------------------------------------------------------------------------------------
# backup location for gpg keys
if [ ! -d $HOME/Storage/backup/gpg ]; then
    mkdir $HOME/Storage/backup/gpg
fi

# ------------------------------------------------------------------------------------------------
# backup current files
cp -r -v $HOME/Documents $HOME/Storage/backup/Documents/
rsync -r -v -h --progress /var/home/iaacornus/Development/ /var/home/iaacornus/Storage/backup/Development/ --exclude="*venv/"
tar -cvpzf $HOME/Storage/backup/gpg/gnupg.tar.gz $HOME/.gnupg
gpg --export --output $HOME/Storage/backup/gpg/public_keys
gpg --export-secret-keys --output $HOME/Storage/backup/gpg/secret_keys
gpg --export-ownertrust > $HOME/Storage/backup/gpg/trustdb

echo -e "\033[1;32mPASS\033[0m Successfully backed up the files ..."

