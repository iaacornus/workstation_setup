#!/usr/bin/env bash
echo -e "\033[1m[>] Creating a backup of \033[36m$HOME/Development/iota-2\033[0m\033[1m in \033[36m$HOME/Storage/backup/iota\033[0m"

# -------------------------------------------------------------------------------------------------
# create base dir
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

# -------------------------------------------------------------------------------------------------
# backup current backups
if [ -d $HOME/Storage/backup_prev/iota ]; then
	echo -e ">>> Removing the previous backup of \033[36m$HOME/Documents\033[0min \033[36m$HOME/Storage/backup_prev/Documents\033[0m"
	rm -rf -v $HOME/Storage/backup_prev/iota
fi

if [ -d $HOME/Storage/backup/iota ]; then
	echo -e ">>> Creating a copy of the previous backup of \033[36m$HOME/Storage/backup/Documents\033[0m in \033[36m$HOME/Storage/backup_prev/Documents\033[0m"
	mv -v $HOME/Storage/backup/iota $HOME/Storage/backup_prev/iota
fi

# -------------------------------------------------------------------------------------------------
# create dir for new backups
if [ ! -d $HOME/Storage/backup/iota ]; then
    echo -e "\033[31m!>> Backup location: \033[0m$HOME/Storage/backup/iota\033[31m does not exists!\033[0m"
    echo -e ">>> Creating backup location at \033[36m$HOME/Storage/backup/iota\033[0m"
    mkdir $HOME/Storage/backup/iota
fi

# -------------------------------------------------------------------------------------------------
# backup the files
echo -e ">>> Copying \033[36m$HOME/Development/iota-2\033[0m to \033[36m$HOME/Storage/backup/iota\033[0m"
rsync -v -r -L --progress -h /var/home/iaacornus/Development/iota-2 /var/home/iaacornus/Storage/backup/iota/ --exclude venv
echo -e ">>> Copying \033[36m$HOME/Development/iota-2-database\033[0m to \033[36m$HOME/Storage/backup/iota\033[0m"
rsync -v -r -L --progress -h /var/home/iaacornus/Development/iota-2-database /var/home/iaacornus/Storage/backup/iota/

echo -e "\033[1;32m[+] Successfully backing up the important files\033[0m"
