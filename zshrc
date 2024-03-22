#export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

export PATH=${PATH}:/usr/local/mysql/bin/
export PATH=${PATH}:/Library/PostgreSQL/14/bin
export PATH=${PATH}:/usr/bin/python3
export PATH=${PATH}:/usr/bin/ssh-keygen
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/bin/sqlite3
#export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
#export PATH="/usr/local/Cellar/openjdk@8/1.8.0-392/libexec/openjdk.jdk/Contents/Home:$PATH"
export JAVA_HOME="/usr/local/Cellar/openjdk@8/1.8.0-392/libexec/openjdk.jdk/Contents/Home"

#If you need to have node@14 first in your PATH, run:
export PATH="/usr/local/opt/node@14/bin:$PATH"

#For Debuggin Openmrs
#export MAVEN_OPTS="-Xmx2048m -Xms2048m -XX:PermSize=512m -XX:MaxPermSize=1024m -Xdebug -Xrunjdwp:transport=dt_socket,address=51696,suspend=n,server=y"

export MAVEN_OPTS="-Xmx1024m -Xms1024m -XX:PermSize=256m -XX:MaxPermSize=512m"

# Debug configuration for the first application
export MAVEN_OPTS_DEBUG_1="$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=51696,suspend=n,server=y"

# Debug configuration for the second application
export MAVEN_OPTS_DEBUG_2="$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=51697,suspend=n,server=y"



#For compilers to find node@14 you may need to set:
export LDFLAGS="-L/usr/local/opt/node@14/lib"
export CPPFLAGS="-I/usr/local/opt/node@14/include"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


alias ps='cd /Users/amir/IdeaProjects/base/base/src/com/aiokleo/problemSolving
'

alias ls="lsd"
alias vi="nvim"
export PS1="%~ %*:👀>_"

#login to stage
alias stage="exec sshpass -p$stageserver ssh $stageaddress"

# for Fast loading
if [ $commands[kubectl] ]; then
  kubectl() {
    unfunction "$0"
    source <(kubectl completion zsh)
    $0 "$@"
  }
fi

#Auto Start Tmux
case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac


# For Markdown View on Terminal
mdp() {
    pandoc -t plain `find . -maxdepth 1 -iname "${1:-readme.md}"` | less
}

# for Haskell
[ -f "/Users/amir/.ghcup/env" ] && . "/Users/amir/.ghcup/env" # ghcup-env
