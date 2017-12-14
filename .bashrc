#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt
PS1='[\u@\h:\w]\n\$ '

# bin paths
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin

# ls aliases
alias ls='ls --color=auto'
alias l='ls -alF'

# cd aliases
c() { cd "$@" && ls; }
complete -F _cd c
alias fd='cd ..'

# Update aliases
alias pac-up='sudo pacman -Syu'
alias aur-up='pacaur -Syua'
alias pac-autorm='sudo pacman -Rsn $(pacman -Qdtq)'

# Qt5 theme fix
export QT_QPA_PLATFORMTHEME=qt5ct

# Infinite .bash_history
export HISTFILESIZE=
export HISTSIZE=

# IME support
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Text editors
export EDITOR=vim
export VISUAL=vim
