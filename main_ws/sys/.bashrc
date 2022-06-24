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

PS1="╭╼ \[\e[1;32m\]\h\[\e[0m\] in [\[\e[1;36m\]\w\[\e[0m\]]\n╰─ \`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]; fi\`\u\[\e[0m\]\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo '@\e[1m\]git:\e[0m\]('; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\]\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo ')'; fi) ❯ "

export PS1

PROMPT_DIRTRIM=2

alias sys-info="bash $HOME/.sys/utils.sh sys-info"
alias tex-gen="bash $HOME/.sys/utils.sh tex-gen"
alias clean-up="bash $HOME/.sys/utils.sh clean-up"
alias htop="toolbox run htop"
alias upgrade="$HOME/.sys/./backup-upgrade.sh"

# git aliases
alias status="git status"
alias add="git add"
alias commit="git commit -S"
alias push="git push origin"
alias pull="git pull"
alias switch="git checkout"
alias diff="git diff"
alias remove="git restore --staged"
alias remote="git remote add"
alias restore="git restore"
alias reset="git reset"
alias branch="git branch"
alias clone="git clone"
alias log="git log"
alias ginit="git init"
alias fetch="git fetch"
alias grm="git rm"
alias merge="git merge"
alias stash="git stash"
alias revert="git revert"
alias track="git lfs track"
alias log-graph="git log --all --graph --color --pretty=format:'%<(7,trunc)%h%C(white)%<(15,trunc)- %ar -%C(reset)%s%C(white)%C(reset)'"
alias repo-clean="toolbox -c fedora-toolbox-35 run java -jar $HOME/.sys/bfg.jar"

alias dev-env="toolbox enter fedora-toolbox-35"

unset rc
. "$HOME/.cargo/env"

ls $HOME/.sys/toys | sort -R | tail -$N | while read file; do
	$HOME/.sys/toys/./$file
	break
done
