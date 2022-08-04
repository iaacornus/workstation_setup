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
    PS1="\n\[\e[1;31m\]\h\[\e[0m\]\`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]; fi\`@\u\[\e[0m\] in [\[\e[1;34m\]\w\[\e[0m\]] \`if git rev-parse --git-dir > /dev/null 2>&1; then echo '[git:'; fi\`\[\e[1;36m\]\$(parse_git_branch)\[\e[0m\]\`if git rev-parse --git-dir > /dev/null 2>&1; then echo ']'; fi\`\[\e[0m\]\n❯ "
else
    PS1="\n\[\e[1;32m\]\h\[\e[0m\]\`if [ \$? = 0 ]; then echo \[\e[0m\]; else echo \[\e[31m\]; fi\`@\u\[\e[0m\] in [\[\e[1;34m\]\w\[\e[0m\]] \`if git rev-parse --git-dir > /dev/null 2>&1; then echo '[git:'; fi\`\[\e[1;36m\]\$(parse_git_branch)\[\e[0m\]\`if git rev-parse --git-dir > /dev/null 2>&1; then echo ']'; fi\`\[\e[1m\]\n❯\[\e[0m\] "
fi

export PS1

PROMPT_DIRTRIM=2

alias sys-info="$HOME/.sys/./utils.sh sys-info"
alias tex-gen="$HOME/.sys/./utils.sh tex-gen"
alias clean-up="$HOME/.sys/./utils.sh clean-up"
alias htop="toolbox run htop"
alias upgrade="$HOME/.sys/./upgrade.sh"
alias mygcc="$HOME/.sys/./dev-utils.sh gcc"
alias myg++="$HOME/.sys/./dev-utils.sh g++"
alias gcc="toolbox --container dev-tools run gcc"
alias g++="toolbox --container dev-tools run g++"
alias julia="toolbox --container dev-tools run julia"
alias golang="toolbox --container dev-tools run go"
alias fortran="toolbox --container dev-tools run gfortran"
alias jupyter-pdf="$HOME/.sys/./dev-utils.sh jupyter-latex"
alias backup-iota="$HOME/.sys/./backup-iota.sh"
alias project-init="$HOME/.sys/./utils.sh project-init"
alias pyc="$HOME/.sys/./dev-utils.sh pyc"
alias asciiquarium="toolbox run asciiquarium"
alias backup-important="$HOME/.sys/./backup-general.sh"
alias pipes="$HOME/.sys/./pipes"
alias pipes3d="$HOME/.sys/./pipes3d"
alias toolbox-upgrade="sudo dnf update -y; sudo dnf autoremove; sudo dnf clean all"
alias sign="gpg --sign"
alias encrypt="gpg --encrypt"
alias decrypt="gpg --decrypt"
alias verify="gpg --verify"
alias repo-clean="toolbox -c dev-tools run java -jar $HOME/.sys/bfg.jar"
alias dev-env="toolbox enter fedora-toolbox-35"
alias clear="$HOME/.sys/./clear.sh"
alias gtree="tree --gitignore"
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind Space:magic-space

unset rc
. "$HOME/.cargo/env"


if [[ $HOSTNAME != "toolbox" && $(tput cols) -gt 79 && $(tput lines) -gt 23 ]]; then
    ls $HOME/.sys/toys | sort -R | tail -$N | while read file; do
	    $HOME/.sys/toys/./$file
	    break
    done
fi
