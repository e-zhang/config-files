# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

unset SSH_ASKPASS
export TERM=xterm-256color
PATH=$PATH:/usr/local/bin
export EDITOR=vim

bind '"\C-t":forward-search-history'

source /etc/bash_completion.d/git-completion.bash
source /etc/bash_completion.d/git-prompt.sh

PS1='[\u@\h \W]\[\033[38;5;110m\]$(__git_ps1 "(%s)")\[\033[0m\]\$ '
