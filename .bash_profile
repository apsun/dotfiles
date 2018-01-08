#
# ~/.bash_profile
#

# bin paths
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$(ruby -e 'print Gem.user_dir')/bin
export PATH

# Qt5 theme fix
export QT_QPA_PLATFORMTHEME=qt5ct

# IME support
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Text editors
export EDITOR=vim
export VISUAL=vim

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
