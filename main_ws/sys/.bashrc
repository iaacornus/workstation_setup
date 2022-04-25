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

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

if [ $HOSTNAME = "toolbox" ]
then
	PS1="[\[\e[1;36m\]\w\[\e[0m\]]-[\[\e[1;32m\]\h\[\e[0m\]\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo '@git:'; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\]]\n❯ "
else
	PS1="[\[\e[1;36m\]\w\[\e[0m\]]\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo '-[@git:'; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\]\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo ']'; fi)\n❯ "
fi

export PS1

PROMPT_DIRTRIM=2

alias help-me="bash $HOME/.sys/utils.sh help-me"
alias sys-info="bash $HOME/.sys/utils.sh sys-info"
alias config-check="bash $HOME/.sys/utils.sh config-check"
alias tex-gen="bash $HOME/.sys/utils.sh tex-gen"
alias clean-up="bash $HOME/.sys/utils.sh clean-up"
alias htop="toolbox run htop"

unset rc
