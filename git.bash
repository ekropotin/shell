#Add git competition
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWDIRTYSTATE=1

source $SCRIPT_PATH/git-completion.bash

PROMPT='[%{$fg[red]%}%~ %{$fg[yellow]%}<$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed "s: ::g") files>
%{$fg[green]%}$(__git_ps1)%{$reset_color%}]%# '

alias st='git status -s'
alias br='git branch'
alias co='git checkout'
alias ci='git commit -a -m'
alias push="git push origin \`git describe --contains --all HEAD\`"