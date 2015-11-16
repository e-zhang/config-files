# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

unset SSH_ASKPASS
PATH=/usr/local/bin:$PATH
export EDITOR=vim

bind '"\C-t":forward-search-history'
alias gdb49=/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.9.1/bin/gdb

source /etc/bash_completion.d/git-completion.bash
source /etc/bash_completion.d/git-prompt.sh

PS1='[\u@\h \W]\[\033[38;5;110m\]$(__git_ps1 "(%s)")\[\033[0m\]\$ '
alias ll='ls -l --color=auto'

if [[ "$TERM" == "screen-256color-italic" ]]; then

        alias ssh='TERM=screen-256color ssh'
fi
