# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# See bash(2) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# vi keybindings with clear screen
set -o vi
bind -m vi-insert "\C-l":clear-screen

# le fancy PS1
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]=> \[$(tput setaf 6)\]\w\[$(tput setaf 3)\] \[$(tput sgr0)\]"

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

#git stuff
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#fzf stuff
if [ -f /etc/profile.d/fzf.bash ]; then
  . /etc/profile.d/fzf.bash
fi

# TODO consistency o ke ase
[[ -f $HOME/.gemrc_local ]] && export GEMRC=$HOME/.gemrc_local

[ -f ~/.fzf.bash ] && source ~/.fzf.bash && export FZF_DEFAULT_COMMAND='git grep -l ""'

[ -f ~/hacking/redbooth/devenv/devenv.sh ] && source ~/hacking/redbooth/devenv/devenv.sh


if [ -z "$TMUX"  ]; then
  tmuxinator start notes --no-attach
  tmux new-session -A -s hello
fi

#[ -f ~/hacking/blurp/blurp.sh ] && source ~/hacking/blurp/blurp.sh

#[ -f ~/hacking/tmux-inception/tmux-shim.sh ] && source ~/hacking/tmux-inception/tmux-shim.sh
