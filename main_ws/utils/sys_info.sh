#!/bin/bash
#* passed

if [[ $1 == *"less"* ]]
then
	echo -e "\e[1;32m> Memory and Swap usage\e[0m"
	free -h

	echo -e "\e[1;32m> CPU usage\e[0m"
	top -n 1 | grep -E "%Cpu|Tasks"

	echo -e "\e[1;32m> Number of running services from systemctl :\e[0m $(systemctl list-units --type=service --state=running | grep listed)"
	echo -e "\e[1;32m> Number of failed services from systemd :\e[0m $(systemctl --failed | grep listed)"
		
else
	echo -e "\e[1;32m> Memory and Swap usage\e[0m"
	free -h

	echo -e "\e[1;32m> CPU usage\e[0m"
	top -n 1 | grep -E "%Cpu|Tasks"

	echo -e "\e[1;32m> Storage usage of /dev/sdb\e[0m"
	df -H | grep "sdb"

	echo -e "\e[1;32m> Storage usage of /var/home and $USER\e[0m"
	df -H $HOME | grep "dev"

	echo -e "\e[1;32m> Storage used of $HOME/Storage\e[0m"
	df -H /dev/sda1

	echo -e "\e[1;32m> Number of running services from systemctl :\e[0m $(systemctl list-units --type=service --state=running | grep listed)"
	echo -e "\e[1;32m> Number of failed services from systemd :\e[0m $(systemctl --failed | grep listed)"
	echo -e "\e[1;32m> System performance time :\e[0m $(systemd-analyze)"
fi		
