# complement
autoload -U compinit
compinit

# lang code
export LANG=ja_JP.UTF-8

# prompt setting
local GREEN=$'%{\e[1;32m%}'
local BLUE=$'%{\e[1;34m%}'
local DEFAULT=$'%{\e[1;m%}'

PROMPT=$BLUE'[${USER}@${HOSTNAME}] %(!.#.$) '$DEFAULT
RPROMPT=$GREEN'[%~]'$DEFAULT
setopt PROMPT_SUBST
#case ${UID} in
#0)
#    PROMPT="%B%{[31m%}%/#%{[m%}%b "
#    PROMPT2="%B%{[31m%}%_#%{[m%}%b "
#    SPROMPT="%B%{[31m%}%r is correct? [n,y,a,e]:%{[m%}%b "
#    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
#        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
#    ;;
#*)
#    PROMPT="%{[31m%}%/%%%{[m%} "
#    PROMPT2="%{[31m%}%_%%%{[m%} "
#    SPROMPT="%{[31m%}%r is correct? [n,y,a,e]:%{[m%} "
#    [ -n "${REMOTEHOST}${SSH_CONNECTION}" ] &&
#        PROMPT="%{[37m%}${HOST%%.*} ${PROMPT}"
#    ;;
#esac

# history setting
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups #ignore duplication
setopt share_history #share history

# cd history
setopt auto_pushd

# list packed
setopt list_packed

# no beep
setopt nolistbeep

# alias
alias vi="vim"
alias ls="ls -G"
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias du="du -h"
alias df="df -h"
alias rm='rm -f'
alias cp='cp -f'
alias mv='mv -f'

# virtualenv
export VIRTUALENV_USE_DISTRIBUTE=true
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi