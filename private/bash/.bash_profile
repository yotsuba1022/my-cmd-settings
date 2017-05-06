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
export PS1="\[\e[1;32m\]\u\[\e[1;33m\]-\[\e[1;35m\]\h™\[\e[1;34m\][\t]\[\e[1;33m\]@\[\e[1;31m\]\W \[\e[1;32m\]$ "

# Get the aliases and functions
alias updatebash='. ~/.bash_profile'
alias l.='ls -alFh'
alias clr='clear'
alias vi='vim'
alias jj='java -jar'
alias pgrep='ps -ef | grep'
alias redison='/usr/local/bin/redis-server /usr/local/etc/redis.conf'
alias gomongo='cd $MONGO_HOME'
alias mongoon='$MONGO_HOME/bin/mongod -f $MONGO_HOME/mongo.conf'
alias work='cd /Users/Carl/work/'
alias jcm='cd /Users/Carl/work/Project/jcm'
alias mypage='/Users/Carl/Dropbox/應用程式/Pancake.io/personal_home_page'
alias gorabbit='rabbitmq-server'
alias rmdstore='find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch'
alias fd='find . -name'
alias tomcatgo='sh $TOMCAT_HOME/bin/startup.sh'
alias tomcatdown='sh $TOMCAT_HOME/bin/shutdown.sh'
alias catalinaout='tail -f $TOMCAT_HOME/logs/catalina.out'
alias xamp='cd /Applications/XAMPP'

# To make a git book, please download the book repository first, then execute the following command under the repository dir.
alias makegitbook='gitbook pdf ./ ./book.pdf'

# User specific environment and startup programs
export MYVIMRC=~/.vimrc
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export M2_HOME=/usr/local/apache-maven-3.3.3
export MONGO_HOME=/Users/Carl/work/mongodb/mongodb-osx-x86_64-3.2.4
export TOMCAT_HOME=/Users/Carl/work/apache-tomcat-7.0.67
export WEB_APPS=/Users/Carl/work/apache-tomcat-7.0.67/webapps

export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$MONGO_HOME/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:/usr/local/bin/subl
export PATH=$PATH:/usr/local/sbin

# Path for PHP5
#export PATH=/usr/local/php5/bin:/usr/local/php5/sbin:$PATH
export PATH=$PATH:/Applications/MAMP/bin/php/php5.6.30/bin

# MacPorts Installer addition on 2017-01-17_at_12:08:40: adding an appropriate PATH variable for use with MacPorts.
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
# Finished adapting your PATH environment variable for use with MacPorts.

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# softlink of nodejs and npm is located at the following dir:
# /usr/local/bin

# To set the default node version:
# nvm alias default version_code (e.g. 6.9.4)

# To switch node version:
# nvm user version_code