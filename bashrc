

reset=$(tput sgr0)
bold=$(tput bold)

PS1="\n \[\e[30;48;5;218m \u \[\e[30;48;5;223m\[\e[38;5;218m\[\e[38;5;0m $PWD \[\e[0m\[\e[38;5;223m \[\e[38;5;0m \n ◙ "

force_color_prompt=yes

# Visualiza los ficheros y directorios 
function cdls { cd "$1"; ls --color;}
alias cd='cdls'

export LS_OPTIONS='--color=auto'

eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
