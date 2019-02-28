export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

export EDITOR=nvim
export BROWSER=qutebrowser

export PATH=$PATH:~/.scripts

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY=/run/user/1000/Xauthority
export HISTFILE="$XDG_DATA_HOME/zsh/history"
export STARDICT_DATA_DIR="$XDG_DATA_HOME"
export TASKRC="$XDG_CONFIG_HOME"/task/taskrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export LESSHISTFILE=-
export _FASD_DATA="$XDG_DATA_HOME/fasd"


# Less colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Autostart X on login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx i3
fi