#
# ~/.bash_profile
#

# Android SDK
export ANDROID_HOME=/opt/android-sdk
export BINTRAY_USER=
export BINTRAY_API_KEY=

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

# bin paths
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$(ruby -e 'print Gem.user_dir')/bin
PATH=$PATH:$(ls -vd $ANDROID_HOME/build-tools/* | tail -n1)
export PATH

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
