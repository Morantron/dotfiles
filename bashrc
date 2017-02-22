# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#set -e
#set -x

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#if [[ "$(shopt login_shell)" =~ "off" ]]; then
  #echo "WARNING: not running in login shell mode"
#fi

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ "$color_prompt" = yes ]; then
    export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]=> \[$(tput setaf 6)\]\w\[$(tput setaf 3)\] \[$(tput sgr0)\]"
    #export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\] \[$(tput sgr0)\]"
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
  *)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  #alias dir='dir --color=auto'
  #alias vdir='vdir --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias gg='git grep -E --color=auto'
alias vim='nvim'
alias sshr='rlwrap -a ssh'
alias dog='pygmentize -g'
alias cdh='cd !$:h'
alias cdt='cd !$:t'
alias be="bundle exec"
alias pomodoro='pomojs --log ~/.pomo.log --tmux'
#eval "$(thefuck --alias)"

alias m=multi
alias muxn=

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# vi keybindings with clear screen
set -o vi
bind -m vi-insert "\C-l":clear-screen

#git stuff
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#fzf stuff
if [ -f /etc/profile.d/fzf.bash ]; then
  . /etc/profile.d/fzf.bash
fi

#autoenv for python
#if [ -f /usr/local/bin/activate.sh ]; then
  #. /usr/local/bin/activate.sh
#fi

#nvm shite
#if [[ -f /usr/share/nvm/init-nvm.sh ]]; then
  #. /usr/share/nvm/init-nvm.sh
  #alias node=/home/jorge/.nvm/versions/node/v0.12.7/bin/node
#fi

function f() {
  if [[ "$#" == 1 ]]; then
    find . -iname "$1"
  elif [[ "$#" == 2 ]]; then
    find $1 -iname "$2"
  else
    echo "f: wat? wrong number of arguments"
  fi
}


function mux_start() {
  tmuxinator start "$1" --no-attach
}

function bd() {
  target_folder=$(cat ~/.bookmarks | fzf-tmux)

  if [[ ! -z $target_folder ]]; then
    cd $target_folder
  fi
}

#m "capr % deploy" release.{staging,production}
function multi() {
  #TODO handle spaces
  for ARGS in ${@:2}
  do
    echo "$1 $ARGS"
  done

  for ARGS in ${@:2}
  do
    $(echo "$1 $ARGS")
  done
}

[[ -f $HOME/.gemrc_local ]] && export GEMRC=$HOME/.gemrc_local

[ -f ~/.fzf.bash ] && source ~/.fzf.bash && export FZF_DEFAULT_COMMAND='git grep -l ""'

[ -f ~/hacking/redbooth/devenv/devenv.sh ] && source ~/hacking/redbooth/devenv/devenv.sh

#[ -f ~/hacking/blurp/blurp.sh ] && source ~/hacking/blurp/blurp.sh

#[ -f ~/hacking/tmux-inception/tmux-shim.sh ] && source ~/hacking/tmux-inception/tmux-shim.sh
