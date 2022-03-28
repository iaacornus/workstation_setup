#!/bin/bash
#* passed

free -h | grep "Swap"
read -p  "Proceed in cleaning swap [y/N] ? " ans

if [[ $ans == *"y"* ]]
then
	echo -e "\e[1;32m> Cleaning swap as issued by : \e[0;36m$USER@$HOSTNAME \e[0m"
	sudo swapoff -a

	# sleep for 30s after turning off swap
	sec=30
	while [ $sec -ge 0 ]; do
		echo -ne "\e[1;32m> /dev/swap deactivated, reactivating after :\e[0;36m" $sec"s\e[0m\033[0K\r"
		let "sec=sec-1"
		sleep 1
	done

	sudo swapon -a
	echo -ne "\n\r"
	echo -e "\e[1;32m> /dev/swap reactivated, successfully\e[0m"
	free -h | grep "Swap"
else
	echo -e "\e[1;31m> Procedure aborted by : \e[1;31m$USER\e[0m"
fi
