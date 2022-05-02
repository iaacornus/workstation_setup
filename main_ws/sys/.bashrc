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

PS1="\[\e[1;32m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\n\u\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo ':'; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\] ❯ "

export PS1

PROMPT_DIRTRIM=2

alias help-me="bash $HOME/.sys/utils.sh help-me"
alias sys-info="bash $HOME/.sys/utils.sh sys-info"
alias config-check="bash $HOME/.sys/utils.sh config-check"
alias tex-gen="bash $HOME/.sys/utils.sh tex-gen"
alias clean-up="bash $HOME/.sys/utils.sh clean-up"
alias htop="toolbox run htop"
alias status="git status"
alias add="git add"
alias commit="git commit"
alias push="git push"
alias pull="git pull"
alias switch="git checkout"
alias rebase="git checkout -b"
alias diff="git diff"
alias reset="git restore --staged"
alias remote-add="git remote add"

unset rc
