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

unset HISTSIZE
export HISTSIZE
unset HISTFILESIZE
export HISTFILESIZE

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# PS1="╭╼ \[\e[1;32m\]\h\[\e[0m\] in [\[\e[1;36m\]\w\[\e[0m\]]\n╰─ \u\$(if git rev-parse --git-dir > /dev/null 2>&1; then echo '@\e[1m\]git:\e[0m\]'; fi)\[\e[1;34m\]\$(parse_git_branch)\[\e[0m\] ❯ "
if [ $HOSTNAME = "toolbox" ]; then
    PS1="\n\[\e[1;31m\]\h\[\e[0m\]\`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]; fi\`@\u\[\e[0m\] in [\[\e[1;34m\]\w\[\e[0m\]] \`if git rev-parse --git-dir > /dev/null 2>&1; then echo '[ '; fi\`\[\e[1;36m\]\$(parse_git_branch)\[\e[0m\]\`if git rev-parse --git-dir > /dev/null 2>&1; then echo ']'; fi\`\[\e[0m\]\n❯ "
else
    PS1="\n\[\e[1;32m\]\h\[\e[0m\]\`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]; fi\`@\u\[\e[0m\] in [\[\e[1;34m\]\w\[\e[0m\]] \`if git rev-parse --git-dir > /dev/null 2>&1; then echo '[ '; fi\`\[\e[1;36m\]\$(parse_git_branch)\[\e[0m\]\`if git rev-parse --git-dir > /dev/null 2>&1; then echo ']'; fi\`\[\e[1m\]\n❯\[\e[0m\] "
fi

export PS1

PROMPT_DIRTRIM=2

alias sys-info="$HOME/.sys/./utils.sh sys-info"
alias tex-gen="$HOME/.sys/./utils.sh tex-gen"
alias clean-up="$HOME/.sys/./utils.sh clean-up"
alias htop="toolbox run htop"
alias upgrade="$HOME/.sys/./backup-upgrade.sh"
alias gcc="$HOME/.sys/./dev-utils.sh gcc"
alias g++="$HOME/.sys/./dev-utils.sh g++"
alias jupyter-pdf="$HOME/.sys/./dev-utils.sh jupyter-latex"
alias backup-iota="$HOME/.sys/./backup-important.sh"
alias project-init="$HOME/.sys/./utils.sh project-init"

# git aliases
alias status="git status"
alias add="git add"
alias commit="git commit -S"
alias push="git push"
alias pull="git pull"
alias checkout="git checkout"
alias gdiff="git diff"
alias restore="git restore"
alias unstage="git restore --staged"
alias remote="git remote"
alias reset="git reset"
alias branch="git branch"
alias clone="git clone"
alias log="git log"
alias log-sum="git log --stat --pretty=format:'%h - %s'"
alias log-ol="git log --oneline --decorate"
alias ginit="git init"
alias fetch="git fetch"
alias grm="git rm"
alias gmv="git move"
alias merge="git merge"
alias stash="git stash"
alias revert="git revert"
alias log-graph="git log --all --graph --color --pretty=format:'%<(7,trunc)%h%C(white)%<(15,trunc)- %ar -%C(reset)%s%C(white)%C(reset)'"
alias repo-clean="toolbox -c dev-tools run java -jar $HOME/.sys/bfg.jar"
alias rebase="git rebase"
alias tag="git tag"
alias ls-files="git ls-files"
alias ls-remote="git ls-remote"
alias show="git show"
alias prune="git prune"
alias gfsck="git fsck"
alias archive="git archive"

alias dev-env="toolbox enter fedora-toolbox-35"

alias clear="$HOME/.sys/./clear.sh"
alias gtree="tree --gitignore"

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind Space:magic-space

unset rc
. "$HOME/.cargo/env"

ls $HOME/.sys/toys | sort -R | tail -$N | while read file; do
	$HOME/.sys/toys/./$file
	break
done
