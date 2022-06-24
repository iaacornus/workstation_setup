clear
ls $HOME/.sys/toys | sort -R | tail -$N | while read file; do
	$HOME/.sys/toys/./$file
	break
done
