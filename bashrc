# ~/.bashrc: executed by bash(1) for non-login shells.
#
# Usage:
# 1. Append following to your ~/.bashrc to source this file
#    # Source custom ~/settings/bashrc (if exists).
#    if [ -f ~/settings/bashrc ]; then
#      source ~/settings/bashrc
#    fi
#
# 2. Link ~/.bashrc to this file under ~/settings/bashrc
#    $ ln -s ~/settings/bashrc ~/.bashrc
#

# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
# erasedups causes all previous lines matching the current line to be removed from the history list before that line is saved
HISTCONTROL=ignoreboth:erasedups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=2000
HISTFILESIZE=2000

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Source alias definitions (if exists).
if [ -f ~/settings/aliases.bash ]; then
  source ~/settings/aliases.bash
fi

# Source ~/work/settings/bashrc-work.bash (if exists and readable)
if [ -r ~/work/settings/bashrc-work.bash ]; then
  . ~/work/settings/bashrc-work.bash
fi

# git prompt
if [ -r /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
  . /usr/share/git-core/contrib/completion/git-prompt.sh
  # GIT_PS1_SHOWDIRTYSTATE - unstaged (*) and staged (+)
  GIT_PS1_SHOWDIRTYSTATE=1
  # GIT_PS1_SHOWSTASHSTATE - '$' next to branch name if have stash
  # GIT_PS1_SHOWUNTRACKEDFILES - '%' if have untracked files
  #GIT_PS1_SHOWUNTRACKEDFILES=1
  # GIT_PS1_SHOWUPSTREAM - auto for '<' to indicate you are behind, '>' ahead, "<>" diverged, and '=' no difference
  #PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
  # GIT_PS1_SHOWCOLORHINTS - MUST use Bash PROMPT_COMMAND= instead of PS1=
  PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
fi
alias git-prompt-help='echo -e "unstaged (*), staged (+), stash ($), untracked (%) \nupstream: behind (<), ahead (>), diverged (<>), no difference (=)"'

