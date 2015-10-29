#JAVA
export JAVA_HOME=/home/jorge/usr/jvm/jdk1.7

#IDEA
export IDEA_JDK=$JAVA_HOME
export IDEA_HOME=/home/jorge/usr/local/idea

#ANDROID
export ANDROID_HOME=/home/jorge/source/android-sdk-linux
export PYTHONSTARTUP=$HOME/.pythonrc
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$PATH:$HOME/usr/lib
export NDK=/home/jorge/source/android-ndk

#GRADLE
export GRADLE_HOME=/home/jorge/usr/local/gradle
export GRADLE_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n"
alias gc="gradle clean build -x test"
alias gcb="gradle clean testClasses build -x test"
alias gt="gradle build"
alias gjr="gradle jettyRun"
alias gua="gradle uploadArchives"

#PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/home/jorge/source/android-ndk:$PATH
export PATH=/home/jorge/source/android-sdk-linux/platform-tools:$PATH
export PATH=$HOME/usr/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$IDEA_HOME/bin:$PATH

#MAVEN
alias mdj="mvnDebug clean jetty:run"
alias mc="mvn clean compile"
alias mjr="mvn jetty:run"
alias mt="mvn test -Didm.properties.location=target/config/JENKINS"
alias mit="mvn integration-test -Didm.properties.location=target/config/JENKINS"

#TOOLS
alias xml="xmllint --format -"
alias json="python -mjson.tool"

stty stop undef # to unmap ctrl-s

#Terminal prompt
PROMPT_COMMAND='echo -e "\033[0;36m[py:$(pyenv version-name)]\033[0m"'

## BASH History
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# big big history
export HISTSIZE=100000
export HISTFILESIZE=100000

# append history entries..
shopt -s histappend

# After each command, save and reload history
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

#pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
