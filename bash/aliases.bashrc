#!/bin/bash

alias ls='ls -GFlh'
alias gzip=pigz
alias ij='open -b com.jetbrains.intellij'
alias wip='git wip'
alias amend='git amend'
alias got='git'
alias mci='mvn clean install'
alias ta='tmux a -t'
alias de='mate Dockerfile'
alias more='less'
alias restartvbox='sudo /Library/Application\ Support/VirtualBox/LaunchDaemons/VirtualBoxStartup.sh restart'

docker-ip() {
  boot2docker ip 2> /dev/null
}
