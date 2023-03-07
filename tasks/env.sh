#!/bin/sh
alias project_root='git root'
alias pr='git root'
alias wdir='PWD'
alias cdroot='cd $(git root)'
alias cdtasks='cd $(git root)/tasks'
alias cdproject='cd $(git root)/TIDALDL-PY'
alias cdfileloc='cd "$(dirname "$0")"'
alias cleanup='$(git root)/tasks/cleanup.sh'
alias build='$(git root)/tasks/build.sh'
alias upload='$(git root)/tasks/upload.sh'
alias init='source $(git root)/tasks/env.sh'

STARTDIR="$(wdir)"
cdroot && . "$(git --exec-path)/git-sh-setup"
cd $STARTDIR

alias start_script='STARTDIR="$(wdir)"'
alias end_script='cd $STARTDIR'