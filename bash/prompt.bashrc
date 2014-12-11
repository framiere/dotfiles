#!/bin/bash

########################################################################
# Matthew's Git Bash Prompt
########################################################################
        RED="\[\033[0;31m\]"
     YELLOW="\[\033[0;33m\]"
      GREEN="\[\033[0;32m\]"
       BLUE="\[\033[0;34m\]"
  LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
      WHITE="\[\033[1;37m\]"
 LIGHT_GRAY="\[\033[0;37m\]"
 COLOR_NONE="\[\e[0m\]"

function git_dirty_flag {
  git status 2> /dev/null | grep -c : | awk '{if ($1 > 0) print "⚡"}'
}

function prompt_func() {
    previous_return_value=$?;
    prompt="${WHITE}\w${LIGHT_GREEN}${COLOR_NONE} "

    if test $previous_return_value -eq 0
    then
        PS1="${prompt}> "
    else
        PS1="${prompt}${WHITE}>${COLOR_NONE} "
    fi
}

PROMPT_COMMAND=prompt_func
