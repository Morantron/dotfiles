# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# See bash(2) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=1000000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# vi keybindings with clear screen
set -o vi
bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-n":next-history
bind -m vi-insert "\C-p":previous-history

if [ -f ~/.profile ]; then
  . ~/.profile
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.asdf/asdf.sh ]; then
  . ~/.asdf/asdf.sh 
fi

#git stuff
if [ -f /usr/share/git/completion/git-completion.bash ]; then
  . /usr/share/git/completion/git-completion.bash
fi

if [ -f /usr/share/fzf/key-bindings.bash ]; then
  . /usr/share/fzf/key-bindings.bash
fi

if [ -f /usr/share/fzf/completion.bash ]; then
  . /usr/share/fzf/completion.bash
fi

if [ -f $HOME/.gemrc_local ]; then
  export GEMRC=$HOME/.gemrc_local
fi

# le fancy PS1
export PS1="🍕 \[\e[1m\]\[\e[35m\]-> \[\e[34m\]\w\[\e[33m\] \[\e[0m\]"

# prompt for vhs
#export PS1="\[$(tput bold)\]\[$(tput setaf 4)\] > \[$(tput sgr0)\]"

. "$HOME/.cargo/env"

# i use neovim btw
export EDITOR=nvim
