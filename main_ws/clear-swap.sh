# /bin/bash
user="iaacornus"
host="sysmain"
yes="y"
no="N"

if [[ $USER = $user ]] && [[ $HOSTNAME = $host ]]
then
	free -h | grep "Swap"
	read -p  "Proceed in cleaning swap? [y/N] " ans

	if [[ $ans = $yes ]]
	then
		echo -e "\033[0;32m[+] Cleaning swap as issued by : \033[0;36m$USER@$HOSTNAME \033[0m"
		sudo swapoff -a

		# sleep for 30s after turning off swap
		sec=30
			while [ $sec -ge 0 ]; do
        			echo -ne "\033[0;32m[+] /dev/swap deactivated, reactivating after :\033[0;36m" $sec"s\033[0m\033[0K\r"
        			let "sec=sec-1"
        			sleep 1
			done

		sudo swapon -a
		echo -ne "\n\r"
		echo -e "\033[0;32m[+] /dev/swap reactivated, successfully\033[0m"
		free -h | grep "Swap"
	else
		echo -e "\033[0;31mProcedure aborted by : \033[0;31m$USER@$HOSTNAME\033[0m"
	fi
else
	if [[ $USER != $user ]] && [[ $HOSTNAME = $host ]]
	then
		echo -e "\033[0;31mPermission denied, the user is not : \033[0;36m$user\033[0m"
	else
		echo -e "\033[0;31mPermission denied, the host is not : \033[0;36m$host\033[0m"
	fi
fi
