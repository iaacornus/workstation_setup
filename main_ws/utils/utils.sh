#!/bin/bash
#* passed

if [[ $1 == *"sys-info"* ]]
then
	if [[ $2 == *"less"* ]]
	then
		echo -e ">>> Memory and Swap usage:"
		free -h
		echo -e ">>> CPU usage:\e[36m $(top -n 1 | grep -E 'Cpu|Tasks')\e[0m"
		echo -e ">>> Number of running services from systemctl:\e[36m $(systemctl list-units --type=service --state=running | grep listed)\e[0m"
		echo -e ">>> Number of failed services from systemd:\e[36m $(systemctl --failed | grep listed)\e[0m"
		echo -e ">>> Uptime: \e[36m$(uptime)\e[0m"
	else
		echo -e ">>> Memory and Swap usage:"
		free -h
		echo -e ">>> CPU usage:"
        top -n 1 | grep -E 'Cpu|Tasks'
		echo -e ">>> Storage usage of \e[36m/dev/sdb\e[0m:"
        df -H | grep 'sdb'
		echo -e ">>> Storage usage of \e[36m/var/home\e[0m (\e[36m$USER\e[0m):"
        df -H $HOME | grep 'dev'
		echo -e ">>> Storage used of \e[36m$HOME/Storage\e[0m:"
        df -H /dev/sda1
		echo -e ">>> Number of running services from systemctl: \e[36m$(systemctl list-units --type=service --state=running | grep 'listed')\e[0m"
		echo -e ">>> Number of failed services from systemd: \e[36m$(systemctl --failed | grep 'listed')\e[0m"
		echo -e ">>> Uptime: \e[36m$(uptime)\e[0m"
		echo -e ">>> System performance time: \e[36m$(systemd-analyze)\e[0m"

	fi

elif [[ $1 == *"tex-gen"* ]]
then
	#* passed
	name=$2
	template_dir="$HOME/Templates/latex_manscrpt_ppr_main_template.tex"

	cp $template_dir $PWD/$2.tex
	echo -e "\e[1;32m[+] Template created in:\e[0m\e[36m $PWD/$1.tex\e[0m"

elif [[ $1 == *"clean-up"* ]]
then
	echo -e "\e[1m[>] Cleaning up the entire filesystem.\e[0m"
	echo -e ">>> Removing journal files with size of:\e[36m$(journalctl --disk-usage)\e[0m"

	sudo journalctl --vacuum-time=3d

	echo -e ">>> Removing \e[36m$HOME/.cache with size of\e[0m:\e[36m $(du -sh $HOME/.cache)\e[0m"
	rm -rf $HOME/.cache/*

	echo -e "\e[1;32m[+] Cleaning done.\e[0m"

fi
