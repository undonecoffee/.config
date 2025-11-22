# these are ones that i didnt find anywhere else to put and i dont want to mess with

case $- in
*i*) ;;
*) return ;;
esac
HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history.
shopt -s histappend    # append to the history file, don't overwrite it
HISTSIZE=1000          # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=2000
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # make less more friendly for non-text input files, see lesspipe(1)
case "$TERM" in                                              # set a fancy prompt (non-color, unless we know we "want" color)
xterm-color | *-256color) color_prompt=yes ;;
esac

if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
