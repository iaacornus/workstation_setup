#!/bin/bash

if [[ ! -n $1 ]]
then
	echo -e "\e[1;31m> No input given.\e[0m"

elif [[ $1 == *"check"* ]]
then
	cat $HOME/.ssh/config
else
	read -p "Swap config for $1 [y/N] ? " ans
	if [[ $ans == *"N"* ]] || [[ $ans == *"n"* ]]
	then
		echo -e "\e[1;31m> User aborted. Exiting.\e[0m"
		exit 1
	else
		if [ -d "$HOME/.ssh/config" ]
		then
			rm $HOME/.ssh/config
		fi

		cp $HOME/.ssh/$1 $HOME/.ssh/config	
		echo -e "\e[1;32m> Config for $1 swapped.\e[0m"
	fi
fi

