#JAVA
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

#IDEA
#export IDEA_JDK=$JAVA_HOME
export IDEA_JDK=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$IDEA_HOME/bin:$PATH

#GRADLE
alias gc="./gradlew clean"
alias gb="./gradlew clean build"
alias gct="./gradlew clean build -x nonCommitTest"
alias gcb="./gradlew clean build -x commitTest -x nonCommitTest"
alias gt="./gradlew test"
alias gjr="./gradlew appRunDebug"
alias gua="./gradlew uploadArchives"
alias gsa="./gradlew spotlessApply"
alias gat="./gradlew apiTest"

#MAVEN
alias mcc="mvn clean compile"
alias mcp="mvn clean package"
alias mct="mvn clean test"
alias mjr="mvn jetty:run"
alias mp="mvn package"
alias mt="mvn test"
alias mtr="mvn tomcat:run"

#TOOLS
alias ll="ls -al"
alias json="jq"
alias xml="xmllint --format -"
alias html="tidy -i --indent-spaces 4"
alias cbh="cat ~/.bash_eternal_history"

#GIT

# Git auto completion
if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
fi

stty stop undef # to unmap ctrl-s

## BASH History
export HISTCONTROL=ignoredups:erasedups
export HISTTIMEFORMAT="%s "
export PROMPT_COMMAND=""'echo $$ $USER "$(history 1)" >> ~/.bash_eternal_history'

#Big history
export HISTSIZE=2147483647
export HISTFILESIZE=2147483647

#Append history entries..
shopt -s histappend

#Avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# Openssl
#export LDFLAGS="-L/home/linuxbrew/.linuxbrew/opt/openssl@3/lib"
#export CPPFLAGS="-I/home/linuxbrew/.linuxbrew/opt/openssl@3/include"
#export PATH="/home/linuxbrew/.linuxbrew/opt/openssl@1.1/bin:$PATH"


#PYTHONPATH
export PYTHONPATH=$HOME/source/cloud-identity-ops:$HOME/source/cloud-identity-ops/api_scripts/azure_v1_v2_migration:$HOME/source/cloud-identity-ops/api_scripts/azure_v1_v2_rollback:$PYTHONPATH

#HELM
export TILLER_NAMESPACE=tesla-staging

#DOCKER
alias dcd="docker-compose down --remove-orphans"
alias dcb="docker-compose down --remove-orphans && docker-compose up -d"

#USER BIN
export PATH=$HOME/usr/bin:$PATH

# Cisco VPN auto completion
if [ -f ~/.vpn-connect-completion.bash ]; then
      . ~/.vpn-connect-completion.bash
fi

#johny configs
export CAFE_CONFIG_FILE_PATH=~/.identity/api.conf
export CAFE_ROOT_LOG_PATH=~/.identity/logs
export CAFE_TEST_LOG_PATH=~/.identity/logs
export CAFE_ENGINE_CONFIG_FILE_PATH=$CAFE_CONFIG_FILE_PATH

# Jmeter
export JMETER_HOME=/opt/jmeter/apache-jmeter-3.0

