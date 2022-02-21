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

# Timestamped history
HISTTIMEFORMAT="%F %T "

# Recursive glob
shopt -s globstar

# ls aliases
alias ls='ls --color=auto'
alias l='ls -alF'
alias sl='ls'
alias s='ls'

# cd aliases
alias fd='c ..'

# pacman aliases
alias pac-up='sudo pacman -Syu'
alias aur-up='yay -Syua'
alias pac-autorm='sudo pacman -Rsn $(pacman -Qdttq)'
alias pac-cacherm='sudo paccache -r; sudo paccache -urk0'

# Wireguard
alias wgu='wg-quick up wg0'
alias wgd='wg-quick down wg0'

# ssh + tmux
ssht() { ssh -t "$@" 'tmux new -As0'; }
