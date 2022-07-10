clear
if [[ $(tput cols) -gt 79 && $(tput lines) -gt 29 ]]; then
    ls $HOME/.sys/toys | sort -R | tail -$N | while read file; do
	    $HOME/.sys/toys/./$file
	    break
    done
fi
