# Carl's .bash_profile

# Customized command prompt
export CLICOLOR=1
export TERM=xterm-256color

# enables color in the terminal bash shell
export CLICOLOR=1
# sets up the color scheme for list
export LSCOLORS=fxexbxdxcxegedabagacad
# enables color for iTerm
export TERM=xterm-256color
export PS1="\[\e[1;32m\]\u\[\e[1;33m\]@\[\e[1;35m\]\h\[\e[1;34m\][\t]\[\e[1;33m\]@\[\e[1;31m\]\W \[\e[1;32m\]$ "

# Get the aliases and functions
alias updatebash='. ~/.bash_profile'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias l.='ls -alFh'
alias clr='clear'
alias vi='vim'
alias jj='java -jar'
alias pgrep='ps -ef | grep'
alias redison='/usr/local/bin/redis-server /usr/local/etc/redis.conf'
alias gomongo='cd $MONGO_HOME'
alias mongoon='$MONGO_HOME/bin/mongod -f $MONGO_HOME/mongo.conf'
alias work='cd /Users/Carl/work/'
alias python_work='cd /Users/Carl/work/Project/python'
alias jcm='cd /Users/Carl/work/Project/jcm'
alias mypage='/Users/Carl/Dropbox/應用程式/Pancake.io/personal_home_page'
alias gorabbit='rabbitmq-server'
alias rmdstore='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch'
alias fd='find . -name'
alias tomcatgo='sh $TOMCAT_HOME/bin/startup.sh'
alias tomcatdown='sh $TOMCAT_HOME/bin/shutdown.sh'
alias catalinaout='tail -f $TOMCAT_HOME/logs/catalina.out'
alias xamp='cd /Applications/XAMPP'
alias p3env='source /Users/Carl/work/python_env/p3-uruz7/bin/activate'
alias aws-uruz7='ssh -i $URUZ7_AWS1_KEY ubuntu@$URUZ7_AWS1'
alias mountawsuruz7='sshfs ubuntu@$URUZ7_AWS1:mnt/ ~/mnt -o IdentityFile=$URUZ7_AWS1_KEY'
alias jenkinsgo='sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist'
alias jenkinsdown='sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist'
alias jvisualvm='/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home/bin/jvisualvm; exit'

# To make a git book, please download the book repository first, then execute the following command under the repository dir.
alias makegitbook='gitbook pdf ./ ./book.pdf'

# User specific environment and startup programs
export MYVIMRC=~/.vimrc
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.1.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home
export M2_HOME=/usr/local/apache-maven-3.3.3
export MYSQL_HOME=/usr/local/opt/mysql
export MONGO_HOME=/Users/Carl/work/mongodb/mongodb-osx-x86_64-3.2.4
export TOMCAT_HOME=/Users/Carl/work/apache-tomcat-9.0.11
export CASSANDRA_HOME=/Users/Carl/work/apache-cassandra-3.11.3
export WEB_APPS=/Users/Carl/work/apache-tomcat-9.0.11/webapps
export URUZ7_AWS1=ec2-18-218-203-211.us-east-2.compute.amazonaws.com
export URUZ7_AWS1_KEY=/Users/Carl/work/resources/uruz7-ec2-1.pem
export GOROOT=/usr/local/go
export GOPATH=/Users/Carl/work/Project/go_workspace
export GRADLE_HOME=/Users/Carl/work/gradle/gradle-4.10.2

export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$MYSQL_HOME/bin
export PATH=$PATH:$MONGO_HOME/bin
export PATH=$PATH:$CASSANDRA_HOME/bin
export PATH=$PATH:/usr/local/bin/subl
export PATH=$PATH:/usr/local/sbin
export PATH=/Users/Carl/work/Project/go_workspace/bin:$PATH
export PATH=$PATH:$GRADLE_HOME/bin

# Path for PHP5
#export PATH=/usr/local/php5/bin:/usr/local/php5/sbin:$PATH
export PATH=$PATH:/Applications/MAMP/bin/php/php5.6.30/bin

# MacPorts Installer addition on 2017-01-17_at_12:08:40: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# DO NOT force vitualenv
export PIP_REQUIRE_VIRTUALENV=false
export PIP_RESPECT_VIRTUALENV=true

# softlink of nodejs and npm is located at the following dir:
# /usr/local/bin

# To set the default node version:
# nvm alias default version_code (e.g. 6.9.4)

# 20171001 Ruru add for Android adb tool. QwQ
export PATH=$PATH:/Users/Carl/Library/Android/sdk/platform-tools
