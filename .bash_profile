# Qt5 theme fix
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# Text editors
export EDITOR=vim
export VISUAL=vim

# Disable auto-hidden scroll bars
export GTK_OVERLAY_SCROLLING=0

# Don't generate __pycache__
export PYTHONDONTWRITEBYTECODE=1

# Hidden dir for gopath
export GOPATH=$HOME/.go

# bin paths
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:$HOME/.go/bin
export PATH

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
