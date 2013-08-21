#Get this script folder
SCRIPT_PATH=`dirname "$0"`; SCRIPT_PATH=`eval "cd \"$SCRIPT_PATH\" && pwd"`

mods[1]="$SCRIPT_PATH/linux_aliases.bash"
mods[2]="$SCRIPT_PATH/dev.bash"
mods[3]="$SCRIPT_PATH/git.bash"
mods[4]="$SCRIPT_PATH/android.bash"

# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.histfile
SAVEHIST=1000

zstyle ':completion:*:processes' command 'ps -ax'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always 
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=$color[cyan]=$color[red]" 

autoload -Uz compinit
compinit
autoload colors; colors

autoload -U colors
colors
setopt prompt_subst

setopt AUTO_CD

cdpath=(~)

for i in $mods
do
    if [ -f $i ]; then
    . $i
    fi
done