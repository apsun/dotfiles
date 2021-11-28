# Qt5 theme fix
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_AUTO_SCREEN_SCALE_FACTOR=0

# IME support
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Text editors
export EDITOR=vim
export VISUAL=vim

# Disable auto-hidden scroll bars
export GTK_OVERLAY_SCROLLING=0

# bin paths
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/.cargo/bin
PATH=$PATH:$HOME/go/bin
export PATH

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
