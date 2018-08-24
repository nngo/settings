# single char aliases
alias a='alias'
alias d='ls -lF'
alias z='ls -aF'

# misc aliases
alias bc='bc -l'
alias cls='clear'
alias ealias='vim ~/settings/bash_aliases'
alias salias='source ~/settings/bash_aliases'
alias md='mkdir'
alias rd='rmdir'
alias psu='ps -f -u $USER'
alias psu2='ps -f -u $USER -U $USER'
alias psuj='ps -f -u $USER | grep java'

# Git aliases
alias gbr='git branch'
alias gci='git commit'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gdi='git diff'
alias gfe='git fetch'
alias gfp='git fetch --prune'
alias glo='git log'
alias gpu='git pull'
alias gpr='git pull --rebase --prune'
alias gst='git status'
alias gss='git stash'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gsv='git stash show'
alias gsv1='git stash show stash@{1}'
alias gsv2='git stash show stash@{2}'

# Gradle aliases
alias gr='gradle'
alias grbld='gradle build'
alias grcbld='gradle clean build'
alias gw='./gradlew'
alias gwbld='gw build'
alias gwcbld='gw clean build'

