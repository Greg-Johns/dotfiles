#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f /etc/profile ]] && source /etc/profile

alias ls='ls --color=auto'
alias sudo='sudo '
PS1='[\u@\h \W]\$ '

export PATH=~/bin:~/.local/bin:$PATH
