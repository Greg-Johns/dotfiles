#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f /etc/profile ]] && source /etc/profile

eval `dircolors ~/.dir_colors/dircolors`

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias sudo='sudo '

PS1='[\u@\h \W]\$ '

PATH=~/.composer/vendor/bin:$PATH
PATH=/usr/lib/ccache/bin:~/bin:~/.local/bin:$PATH
PATH=~/.cargo/bin:$PATH
export PATH
