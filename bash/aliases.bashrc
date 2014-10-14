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
#alias jekyll='docker run --rm -v "$PWD:/src" -p 4000:4000 grahamc/jekyll'
#alias kube='~/src/kubernetes/cluster/kubecfg.sh'

docker-ip() {
  boot2docker ip 2> /dev/null
}
