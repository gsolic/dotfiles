#!/bin/sh

# Credits
# https://github.com/mathiasbynens/dotfiles
# https://github.com/paulirish/dotfiles

# colors
# -----------------------------------------------------------------------------------------------------------
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# defaults
# -----------------------------------------------------------------------------------------------------------
alias ll='ls -alF'
alias la='ls -A'
alias lf='ls -CF'

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Enable aliases to be sudo’ed
alias sudo='sudo '


alias myip='curl ip.appspot.com'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# git
# -----------------------------------------------------------------------------------------------------------

# archive
# -----------------------------------------------------------------------------------------------------------

# stopwatch
# -----------------------------------------------------------------------------------------------------------
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'


# IP addresses
# -----------------------------------------------------------------------------------------------------------
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"


# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"
