# ~/.cshrc: executed by csh(1) for non-login shells.
#           read at begining of execution by each shell.
#
# Usage:
# 1. Append following to your ~/.cshrc to source this file
#    # Source custom ~/settings/cshrc (if exists).
#    if ( -f ~/settings/cshrc ) source ~/settings/cshrc
#
# 2. Link ~/.cshrc to this file under ~/settings/cshrc
#    $ ln -s ~/settings/cshrc ~/.cshrc
#

# If not running interactively, don't do anything
if (! $?prompt) then
    exit
endif

# Colors
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}" # This is needed at the end... :(

# set prompt, N=username, m=hostname, c2=show parent/current dir
set prompt = "${green}%N${blue}@%m ${yellow}%c2${end} %# "

# Clean up after ourselves...
unset red green yellow blue magenta cyan yellow white end

# turn on auto-correction
set correct = cmd

# list possible completions when hitting TAB
set autolist = ambiguous

# history settings
set history = 1000
# merge saved history instead of overwrite
set savehist = (1000 merge)
# do not save duplicates
set histdup = erase
# use history to aid expansion
set autoexpand

# [tcsh] rescan new commands from path automatically (in most cases)
set autorehash

# enable color support of ls and also add handy aliases
if ( -x /usr/bin/dircolors ) then
    test -r ~/.dircolors && eval `dircolors -b ~/.dircolors)` || eval `dircolors --csh`

    alias ls 'ls --color=auto'
    alias grep 'grep --color=auto'
    alias fgrep 'fgrep --color=auto'
    alias egrep 'egrep --color=auto'
endif

# Source alias definitions (if exists).
if ( -f ~/settings/caliases.csh ) source ~/settings/caliases.csh

