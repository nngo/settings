# single char aliases
alias a='alias'
alias d='ls -lF'
alias g='grep'
alias h='history'
alias z='ls -aF'

# misc aliases
alias bc='bc -l'
alias cls='clear'
alias ealias='vi ~/settings/aliases.bash'
alias salias='source ~/settings/aliases.bash'
alias less-ansi-color='less --RAW-CONTROL-CHARS'
alias ll='ls -l'
alias lss='ls -lSr'
alias lst='ls -ltr'
alias md='mkdir'
alias rd='rmdir'
alias psu='ps -f -u $USER'
alias psu2='ps -f -u $USER -U $USER'
alias psuj='ps -f -u $USER | grep java'
alias ssh-forward-port-example='ssh -L local_port:remote_host:remote_port'
alias vimcr='vim -b'
alias disable-bash-history='set +o history'
alias disable-bash-history2='unset HISTFILE'
alias enable-bash-history='set -o history'
alias killw='taskkill //f //pid'

alias help-export-ssh-agent='echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK; export SSH_AGENT_PID=$SSH_AGENT_PID;"'

# Git aliases
alias gbd='git branch --delete'
alias gbdf='git branch --delete --force'
alias gbla='git branch --all'
alias gbr='git branch'
alias gchmod-x='git update-index --chmod=-x'
alias gchmod-x-src='find src -type f | xargs git update-index --chmod=-x'
alias gchmodx='git update-index --chmod=+x'
alias gcb='git checkout -b'
alias gclist='git config --list --show-origin'
alias gcl-autocrlf='git config --list --show-origin | grep core.autocrlf'
alias gci='git commit'
alias gcis='git commit --gpg-sign'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gdi='git diff'
alias gfe='git fetch'
alias gfp='git fetch --prune'
alias ggc='git gc'
alias ggca='git gc --aggressive --prune'
alias gls-not-44='git ls-tree HEAD | grep -v "44 "'
alias gl3='git log --decorate -3'
alias glast='git log --decorate -5'
alias glg='git log --graph --decorate --show-signature'
alias glg1='git log --graph --decorate --oneline'
alias glg2='git log --graph --pretty=format:"%C(auto)%h %C(auto)%G? -%d %s %Cgreen(%cd) %C(bold blue)<%an>%Creset" --date=format:%c'
alias glo='git log'
alias gpfs='git push --force-with-lease'
alias gpr='git pull --rebase --prune'
alias gpu='git pull --prune'
alias gpush='git push --set-upstream origin HEAD'
alias gridev='git rebase -i origin/dev'
alias grisdev='git rebase -i origin/dev --gpg-sign'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash'
alias gst='git status'
alias gsv='git stash show'
alias gsvv='git stash show -v -p'
alias gsv1='git stash show stash@{1}'
alias gsvv1='git stash show stash@{1} -v -p'
alias gsv2='git stash show stash@{2}'
alias gsvv2='git stash show stash@{2} -v -p'
alias gsv3='git stash show stash@{3}'
alias gsvv3='git stash show stash@{3} -v -p'
alias gsv4='git stash show stash@{4}'
alias gsvv4='git stash show stash@{4} -v -p'
alias gsv5='git stash show stash@{5}'
alias gsvv5='git stash show stash@{5} -v -p'
alias gsv6='git stash show stash@{6}'
alias gsvv6='git stash show stash@{6} -v -p'
alias gta='git tag --annotate'
alias gtas='git tag --annotate --sign'
alias gtav='git tag --verify'
alias gtad='git tag --delete'
alias gfetch-all-subdirs='find . -maxdepth 3 -name .git -type d -exec git -C {} fetch --prune \;'
alias ggc-all-subdirs='find . -maxdepth 3 -name .git -type d -exec git -C {} gc \;'
alias gprune-all-subdirs='find . -maxdepth 3 -name .git -type d -exec git -C {} prune --progress --verbose \;'

# Gradle aliases
alias gr='gradle'
alias grb='gradle build'
alias grc='gradle clean'
alias grcb='gradle clean build'
alias grp2local='gradle publishToMavenLocal'
alias gw='./gradlew'
alias gw..='../gradlew'
alias gwa='gw assemble'
alias gwa..='gw.. assemble'
alias gwb='gw build'
alias gwbnocache='gw --no-build-cache build'
alias gwb..='gw.. build'
alias gwc='gw clean'
alias gwc..='gw.. clean'
alias gwcb='gw clean build'
alias gwcbnocache='gw --no-build-cache clean build'
alias gwd='gw dependencies'
alias gwd..='gw.. dependencies'
alias gwdm='gw dependencyManagement'
alias gwdoc='gw javadoc'
alias gwp2local='gw publishToMavenLocal'
alias gwupgrade-to-5_3_1='gw wrapper --gradle-version 5.3.1 --gradle-distribution-sha256-sum 1c59a17a054e9c82f0dd881871c9646e943ec4c71dd52ebc6137d17f82337436 && gw wrapper -v'
alias gwupgrade-to-5_4_1='gw wrapper --gradle-version 5.4.1 --gradle-distribution-sha256-sum 7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc && gw wrapper -v'
alias gwupgrade-to-5_5_1='gw wrapper --gradle-version 5.5.1 --gradle-distribution-sha256-sum 222a03fcf2fcaf3691767ce9549f78ebd4a77e73f9e23a396899fb70b420cd00 && gw wrapper -v'
alias gwupgrade-to-5_6_4='gw wrapper --gradle-version 5.6.4 --gradle-distribution-sha256-sum 1f3067073041bc44554d0efe5d402a33bc3d3c93cc39ab684f308586d732a80d && gw wrapper -v'

# dates
alias now2sec='date +%s'
alias date2sec='date --date=2019-01-08 +%s'
alias sec2date='date --date=@1546923600'

# PDF
# 128 bit AES - requires PDF v1.6
alias protect-pdf-128-aes='qpdf --encrypt user-password owner-password 128 --use-aes=y -- input.pdf protected.pdf'
# 256 bit AES - requires PDF v1.7 with extension level 8, e.g. Acrobat X)
alias protect-pdf-256-aes='qpdf --encrypt $pdf_user_password $pdf_owner_password 256 --'
alias protect-pdf2='qpdf --encrypt $pdf_password $pdf_password 256 --'
alias protect-pdf1='qpdf --encrypt $pdf_password $pdf_password 128 --use-aes=y --'
# 256 bit AES - requires PDF v1.7 with extension level 8, e.g. Acrobat X)
alias unprotected-pdf='qpdf --password=owner-passwd --decrypt protected.pdf output.pdf'
alias pdf-page-selection='qpdf --empty --pages'
alias pdf-page-selection-example='qpdf --empty --pages in1.pdf 2-5 [in2.pdf page-range ...] -- out.pdf'

alias http-post-json-curl='curl --request POST --header "Content-Type: application/json" --data'
alias http-post-data.json-file='curl -X POST -H "Content-Type: application/json" --data @data.json -i'
