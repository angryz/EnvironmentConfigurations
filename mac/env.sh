#!/bin/zsh

#PATH
export EDITOR="vim"
export PROJECT_HOME=$HOME/Projects
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export JAVA_HOME="`/usr/libexec/java_home -v 1.8`"
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$CLASSPATH:.:$JAVA_HOME/lib:$JRE_HOME/lib
export MAVEN_HOME=$HOME/develop/apache-maven-3.3.3
export GRADLE_HOME=$HOME/develop/gradle-2.7
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
function ports() { lsof -Pni4 | grep LISTEN }

# Aliases
