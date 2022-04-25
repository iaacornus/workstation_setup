#!/bin/bash
#* passed

if [[ $1 == *"sys-info"* ]]
then
	if [[ $2 == *"less"* ]]
	then
		echo -e "\e[1;32m> Memory and Swap usage:\e[0m"
		free -h

		echo -e "\e[1;32m> CPU usage:\e[0m"
		top -n 1 | grep -E "%Cpu|Tasks"

		echo -e "\e[1;32m> Number of running services from systemctl:\e[0m $(systemctl list-units --type=service --state=running | grep listed)"
		echo -e "\e[1;32m> Number of failed services from systemd:\e[0m $(systemctl --failed | grep listed)"
		echo -e "\e[1;32m> Uptime:\e[0m $(uptime)"


	else
		echo -e "\e[1;32m> Memory and Swap usage:\e[0m"
		free -h

		echo -e "\e[1;32m> CPU usage:\e[0m"
		top -n 1 | grep -E "%Cpu|Tasks"

		echo -e "\e[1;32m> Storage usage of /dev/sdb:\e[0m"
		df -H | grep "sdb"

		echo -e "\e[1;32m> Storage usage of /var/home and $USER:\e[0m"
		df -H $HOME | grep "dev"

		echo -e "\e[1;32m> Storage used of $HOME/Storage:\e[0m"
		df -H /dev/sda1

		echo -e "\e[1;32m> Number of running services from systemctl:\e[0m $(systemctl list-units --type=service --state=running | grep listed)"
		echo -e "\e[1;32m> Number of failed services from systemd:\e[0m $(systemctl --failed | grep listed)"
		echo -e "\e[1;32m> Uptime:\e[0m $(uptime)"
		echo -e "\e[1;32m> System performance time:\e[0m $(systemd-analyze)"

	fi

elif [[ $1 == *"tex-gen"* ]]
then
	#* passed
	name=$2
	template_dir="$HOME/Templates/latex_manscrpt_ppr_main_template.tex"

	cp $template_dir $PWD/$2.tex
	echo -e "\e[1;32m> Template created in:\e[0m $PWD/$1.tex"

elif [[ $1 == *"config-check"* ]]
then
	cat $HOME/.ssh/config

elif [[ $1 == *"help-me"* ]]
then
	#* passed
	echo -e	"\e[32mclear-swap\e[0m			Clear the swap of system."
	echo -e "\e[32mconfig-swap\e[36m [config file]\e[0m	Swap the SSH config files for the input."
	echo -e "\e[32msys-info\e[36m [less]\e[0m			Show the basic components of system."
	echo -e "\e[32mtex-gen\e[36m [file name]\e[0m		Generate a LaTeX article from the given template."

elif [[ $1 == *"clean-up"* ]]
then
	echo -e "\e[1;32m> Cleaning up the entire filesystem.\e[0m"
	echo -e "\e[32m> Removing journal files:\e[0m\n$(journalctl --disk-usage)"

	sudo journalctl --vacuum-time=3d

	echo -e "\e[32m> Removing $HOME/.cache:\e[0m\n$(du -sh $HOME/.cache)"
	rm -rf $HOME/.cache/*

	echo -e "\e[1;32m> Cleaning done.\e[0m"
else
	echo -e "\e[1;31m> User aborted. Exiting.\e[0m"

fi
