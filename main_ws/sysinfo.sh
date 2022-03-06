# /bin/bash
user="iaacornus"
host="sysmain"

if [[ $USER = $user ]] && [[ $HOSTNAME = $host ]]
then
	echo -e "\033[0;32m[+] Memory and Swap usage\033[0m"
	free -h

	echo -e "\033[0;32m[+] CPU usage\033[0m"
	top -n 1 | grep -E "%Cpu|Tasks"
	
	echo -e "\033[0;32m[+] Storage usage of /dev/sdb\033[0m"
	df -H | grep "sdb"

	echo -e "\033[0;32m[+] Storage usage of /var/home and $USER\033[0m"
	df -H $HOME | grep "dev"

	echo -e "\033[0;32m[+] Storage used of $HOME/Storage\033[0m"
	df -H /dev/sda1

	echo -e "\033[0;32m[+] Number of running services from systemctl :\033[0m $(systemctl list-units --type=service --state=running | grep listed)"
	echo -e "\033[0;32m[+] Number of failed services from systemd :\033[0m $(systemctl --failed | grep listed)"
	echo -e "\033[0;32m[+] System performance time :\033[0m $(systemd-analyze)\033[0m"
	
else
	if [[ $USER != $user ]] && [[ $HOSTNAME = $host ]]
	then
		echo -e "\033[0;31mPermission denied, the user is not : \033[0;36m$user\033[0m"
	else
		echo -e "\033[0;31mPermission denied, the host is not : \033[0;36m$host\033[0m"
	fi
fi

