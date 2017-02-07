#!/bin/zsh

#PATH
export EDITOR="vim"
export PROJECT_HOME=$HOME/Projects
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$CLASSPATH:.:$JAVA_HOME/lib:$JRE_HOME/lib
export MAVEN_HOME=$HOME/develop/apache-maven-3.3.3
export GRADLE_HOME=$HOME/develop/gradle-2.14
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$JAVA_HOME/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin"

#OWNER
export USER_NAME="Zhipeng Zheng"

# FileSearch
#function f() { find . -iname "*$1*" ${@:2} }
#function r() { grep "$1" ${@:2} -R . }

# mkdir and cd
#function mkcd() { mkdir -p "$@" && cd "$_"; }

# find process using a port
function port() { lsof -i tcp:$1 }
# list all open ports
function ports() { lsof -Pni | grep --color=never LISTEN }

# Aliases
alias envconf="vim $PROJECT_HOME/myGithub/my-settings/mac/env.sh"
alias cdyz="cd $PROJECT_HOME/youzan"
alias cdgh="cd $PROJECT_HOME/myGithub"
alias gityouzan='git config user.name "zhengzhipeng" && git config user.email "zhengzhipeng@youzan.com"'
alias yzssh='ssh -A -o ConnectTimeout=3 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias gw1="yzssh -A zhengzhipeng@login1.qima-inc.com"
alias gw2="yzssh -A zhengzhipeng@login2.qima-inc.com"
alias qagw1="yzssh -A zhengzhipeng@login1.qa.qima-inc.com"
alias qagw2="yzssh -A zhengzhipeng@login2.qa.qima-inc.com"
alias ynpm="npm --registry=http://registry.npm.qima-inc.com"
