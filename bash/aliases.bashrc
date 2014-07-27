#!/bin/bash

alias ls='ls -GFl'
alias gzip=pigz
alias ij='open -b com.jetbrains.intellij'
alias wip='git wip'
alias amend='git amend'
alias got='git'
alias mci='mvn clean install'
alias gc='gcutil'
alias db='docker build -t $(whoami)/$(basename $(pwd)) .'
alias dr='docker run -ti $(whoami)/$(basename $(pwd))'