#!/bin/bash

# General
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -alh'
alias v='vim -p'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias sp='ps aux | grep'

# Development
alias g='git'
alias gk='gitk --all'
alias gss='g s;g l'

# System
alias ss='apt-cache search -n'
alias si='dpkg -l | grep'
alias ssi='apt-cache show'
