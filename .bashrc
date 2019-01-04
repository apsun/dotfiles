#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt
PS1='[\u@\h:\w]\n\$ '

# Infinite Bash history
HISTFILESIZE=
HISTSIZE=

# Immediately write history
shopt -s histappend
HISTCONTROL=ignoredups
PROMPT_COMMAND="history -a"

# ls aliases
alias ls='ls --color=auto'
alias l='ls -alF'

# cd aliases
c() { cd "$@" && ls; }
complete -F _cd c
alias fd='c ..'

# pacman aliases
alias pac-up='sudo pacman -Syu'
alias aur-up='yay -Syua'
alias pac-autorm='sudo pacman -Rsn $(pacman -Qdtq)'
alias pac-cacherm='sudo paccache -r; sudo paccache -urk0'
