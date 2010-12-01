# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias tw='sudo tcpdump -i any -s 65535 -w /tmp/tcpdump && wireshark /tmp/tcpdump'
alias ..='cd ..'

#sort by size desc
alias l='ls -lhSar'
alias f='free -m'
alias df='df -h'

# color
alias tree='tree -C'

#easy to see network
alias li='lsof -i -nP'

alias gb='git branch'
alias gl='git log'
alias g='git status'

alias dhclient='dhclient -v'
alias nc='rlwrap nc'

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# User specific aliases and functions

export JAVA_HOME=/usr/java/default
export ANDROID_HOME=/opt/android-sdk-linux_x86/
export M2_HOME=/opt/apache-maven-2.2.1
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx2G"
#export MAVEN_OPTS="-Xms256m -Xmx2G -Xdebug -Xrunjdwp:transport=dt_socket,address=8001,server=y,suspend=n"
export ANT_HOME=/opt/apache-ant-1.8.1
PATH=$JAVA_HOME/bin:$PATH:/opt/jnotify-0.93/:$ANDROID_HOME/tools:$M2:$ANT_HOME/bin:/opt/mat:/opt/proxyserver/localproxy-2.0.0:/opt/clojure-1.2.0
