# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
## Include custom dirs
if [ -f /home/$USER/.bash_conf/dirs ]; then 
    . /home/$USER/.bash_conf/dirs
    ## Some vars are dir dependent, so the check is here
    if [ -f /home/$USER/.bash_conf/vars ]; then
        source /home/$USER/.bash_conf/vars
    fi
fi
## Include custom aliases
if [ -f /home/$USER/.bash_conf/custom_aliases ]; then
    source /home/$USER/.bash_conf/custom_aliases
fi
## Include mah templates for code
if [ -f /home/$USER/.bash_conf/code_templates ]; then
    source /home/$USER/.bash_conf/code_templates
fi
## Check if pretty shell is possible
if [ -f /home/$USER/.bash_conf/shell_css ];then
    source /home/$USER/.bash_conf/shell_css
fi
## Pimp up my git
if [ -f /home/$USER/.bash_conf/git_format ];then
    source /home/$USER/.bash_conf/git_format
fi
## Check if I am running WSL instead of a true BASH OF STEEL
if [[ `uname -a | grep "Microsoft"` != "" ]]; then
    echo "It looks like you are using Windows instead of Linux :("
    echo "Poor devil..."
    cd "/home/$USER"
    if [ -f /home/$USER/.bin/scripts/wsl_bootstrap.sh ]; then
        sh "/home/$USER/.bin/scripts/wsl_bootstrap.sh"
    else
        echo "WSL and No script! WTF??"
    fi
fi
## Custom prompt
if [ -f /home/$USER/.bash_conf/prompt ];then
    source /home/$USER/.bash_conf/prompt
fi

