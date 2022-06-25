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

# PS1="╭╼ \[\e[1;32m\]\h\[\e[0m\] in [\[\e[1;36m\]\w\[\e[0m\]]\n╰─ \u\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo '@\e[1m\]git:\e[0m\]'; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\] ❯ "
PS1="╭╼ \[\e[1;34m\]\h\[\e[0m\] in [\[\e[1;36m\]\w\[\e[0m\]]\n╰─ \`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]; fi\`\u\[\e[0m\]\`if git rev-parse --git-dir > /dev/null 2>&1; then echo '@git:('; fi\`\[\e[1m\]\$(parse_git_branch)\[\e[0m\]\`if git rev-parse --git-dir > /dev/null 2>&1; then echo ')'; fi\` ❯ "

export PS1

PROMPT_DIRTRIM=2

alias sys-info="$HOME/.sys/./utils.sh sys-info"
alias tex-gen="$HOME/.sys/./utils.sh tex-gen"
alias clean-up="$HOME/.sys/./utils.sh clean-up"
alias htop="toolbox run htop"
alias upgrade="$HOME/.sys/./backup-upgrade.sh"

# git aliases
alias gstatus="git status"
alias gadd="git add"
alias gcommit="git commit -S"
alias gpush="git push"
alias gpull="git pull"
alias gcheckout="git checkout"
alias gdiff="git diff"
alias grestore="git restore"
alias gremote="git remote"
alias greset="git reset"
alias gbranch="git branch"
alias gclone="git clone"
alias glog="git log"
alias glog-sum="git log --stat --pretty=format:'%h - %s'"
alias glog-ol="git log --oneline --decorate"
alias ginit="git init"
alias gfetch="git fetch"
alias grm="git rm"
alias gmv="git move"
alias gmerge="git merge"
alias gstash="git stash"
alias grevert="git revert"
alias glog-graph="git log --all --graph --color --pretty=format:'%<(7,trunc)%h%C(white)%<(15,trunc)- %ar -%C(reset)%s%C(white)%C(reset)'"
alias grepo-clean="toolbox -c fedora-toolbox-35 run java -jar $HOME/.sys/bfg.jar"
alias grebase="git rebase"
alias gtag="git tag"
alias gls-files="git ls-files"
alias gls-remote="git ls-remote"
alias gshow="git show"
alias gprune="git prune"
alias gfsck="git fsck"
alias garchive="git archive"

alias dev-env="toolbox enter fedora-toolbox-35"

alias clear="$HOME/.sys/./clear.sh"

unset rc
. "$HOME/.cargo/env"

ls $HOME/.sys/toys | sort -R | tail -$N | while read file; do
	$HOME/.sys/toys/./$file
	break
done
