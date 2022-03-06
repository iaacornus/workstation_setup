# /bin/bash
user="iaacornus"
host="sysmain"

if [[ $USER = $user ]] && [[ $HOSTNAME = $host ]]
then
	echo -e "\033[0;32m[+] Memory and Swap usage\033[0m"
	free -h

	echo -e "\033[0;32m[+] CPU usage\033[0m"
	top -n 1 | grep -E "%Cpu|Tasks"

	echo -e "\033[0;32m[+] Number of running services from systemctl :\033[0m $(systemctl list-units --type=service --state=running | grep listed)"
	echo -e "\033[0;32m[+] Number of failed services from systemd :\033[0m $(systemctl --failed | grep listed)"
		
else
	if [[ $USER != $user ]] && [[ $HOSTNAME = $host ]]
	then
		echo -e "\033[0;31mPermission denied, the user is not : \033[0;36m$user\033[0m"
	else
		echo -e "\033[0;31mPermission denied, the host is not : \033[0;36m$host\033[0m"
	fi
fi

