#!/bin/bash

# General
alias ls='ls --color=auto'
alias l='ls -lh'
alias ll='ls -alh'
alias v='vim -p'
alias sv='sudo vim -p'
alias t='tree'
alias tt='tree -a'
alias n='nautilus . &'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias sp='ps aux | grep'

# Desarrollo
alias g='git'
alias gk='gitk --all &'
alias gss='g s;g l'
alias gps='g ps; g push --tags'
alias gd='git-deb'
alias qm='make distclean; qmake-qt4; make'
alias gf='git flow'
alias gfi='gf init'
alias gff='gf feature'
alias gfr='gf release'
alias gfh='gf hotfix'

# Sistema
alias ss='apt-cache search -n'
alias si='dpkg -l | grep'
alias ssi='apt-cache show'
alias ii='sudo apt-get install'
alias ir='sudo apt-get remove'

function make-completion-wrapper () {
    local function_name="$2"
    local arg_count=$(($#-3))
    local comp_function_name="$1"
    shift 2
    local function="
      function $function_name {
          ((COMP_CWORD+=$arg_count))
          COMP_WORDS=( "$@" \${COMP_WORDS[@]:1} )
          "$comp_function_name"
          return 0
      }"
    eval "$function"
}

# git
make-completion-wrapper _git _g git
complete -o filenames -F _g g
