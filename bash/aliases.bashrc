#!/bin/bash

alias ls='ls -GFl'
alias gzip=pigz
alias ij='open -b com.jetbrains.intellij'
alias wip='git wip'
alias amend='git amend'
alias got='git'
alias mci='mvn clean install'
alias mate='atom'
alias ta='tmux a -t'
alias de='atom Dockerfile'
alias more='less'

docker-ip() {
  boot2docker ip 2> /dev/null
}
