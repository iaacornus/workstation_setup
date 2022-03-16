# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

if [ $HOSTNAME = "toolbox" ]
then
	PS1="┌─╼[\[\e[1;36m\]\w\[\e[0m\]]-(\`if [ \$? = 0 ]; then echo \[\e[32m\]1\[\e[0m\]; else echo \[\e[31m\]0\[\e[0m\]; fi\`)-[\[\e[1;36m\]\h\[\e[0m\]]\n└─ \u>> "
else
	PS1="┌─╼[\[\e[1;36m\]\w\[\e[0m\]]-(\`if [ \$? = 0 ]; then echo \[\e[32m\]1\[\e[0m\]; else echo \[\e[31m\]0\[\e[0m\]; fi\`)-[\[\e[1;32m\]\h\[\e[0m\]]\n└─ \u>> "
fi


PROMPT_DIRTRIM=2

alias clear-swap="$HOME/.sys/clear_swap.sh"
alias cswap-clear="$HOME/.sys/clear_swap.sh ; clear"
alias helpme="cat $HOME/.sys/help.txt"
alias sys-summary="$HOME/.sys/sysinfo.sh"
alias sys-less="$HOME/.sys/less_sysinfo.sh"

unset rc
