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

elif [[ $1 == *"clear-swap"* ]]
then
	#* passed
	free -h | grep "Swap"
	read -p  "Proceed in cleaning swap [y/N]? " ans

	if [[ $ans == *"y"* ]]
	then
		echo -e "\e[1;32m> Cleaning swap as issued by: \e[0;36m$USER@$HOSTNAME \e[0m"
		sudo swapoff -a

		# sleep for 30s after turning off swap
		sec=30
		while [ $sec -ge 0 ]; do
			echo -ne "\e[1;32m> /dev/swap deactivated, reactivating after:\e[0;36m" $sec"s\e[0m\033[0K\r"
			let "sec=sec-1"
			sleep 1
		done

		sudo swapon -a
		echo -ne "\n\r"
		echo -e "\e[1;32m> /dev/swap reactivated, successfully\e[0m"
		free -h | grep "Swap"
	else
		echo -e "\e[1;31m> Procedure aborted by: \e[1;31m$USER\e[0m"
	fi

elif [[ $1 == *"tex-gen"* ]]
then
	#* passed
	name=$2
	template_dir="$HOME/Templates/latex_manscrpt_ppr_main_template.tex"

	cp $template_dir $PWD/$2.tex
	echo -e "\e[1;32m> Template created in: $PWD/$1.tex\e[0m"

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

else
	echo -e "\e[1;31m> User aborted. Exiting.\e[0m"

fi
