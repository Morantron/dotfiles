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

#git stuff
if [ -f /usr/share/git/completion/git-completion.bash ]; then
  . /usr/share/git/completion/git-completion.bash
fi

#fzf stuff
if [ -f $HOME/.fzf.bash ]; then
  . $HOME/.fzf.bash
fi

if [ -f $HOME/.gemrc_local ]; then
  export GEMRC=$HOME/.gemrc_local
fi

#if [ -f ~/.fzf.bash ] && source ~/.fzf.bash && export FZF_DEFAULT_COMMAND='git grep -l ""'

# le fancy PS1
export PS1="🍕 \[$(tput bold)\]\[$(tput setaf 5)\]-> \[$(tput setaf 4)\]\w\[$(tput setaf 3)\] \[$(tput sgr0)\]"
#export PS1="<3 \[$(tput bold)\]\[$(tput setaf 5)\]🡒  \[$(tput setaf 4)\]\w\[$(tput setaf 3)\] \[$(tput sgr0)\]" 


if [ -z "$TMUX"  ]; then
  tmuxinator start notes --no-attach
  tmux new-session -A -s hello
fi

#export DIRENV_LOG_FORMAT=""
#eval "$(direnv hook bash)"
