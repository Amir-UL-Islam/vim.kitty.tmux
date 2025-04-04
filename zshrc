export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH=${PATH}:/usr/local/bin
export PATH=${PATH}:/usr/local/mysql/bin/
export PATH=${PATH}:/Library/PostgreSQL/14/bin
export PATH=${PATH}:/usr/bin/python3
export PATH=${PATH}:/usr/bin/ssh-keygen
export PATH=/usr/local/bin:$PATH
export PATH=${PATH}:/usr/bin/sqlite3
export PATH=${PATH}:/usr/local/Cellar/mysql@8.0/8.0.36_1/bin
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk@17/include"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"


#export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
#export PATH="/usr/local/Cellar/openjdk@8/1.8.0-392/libexec/openjdk.jdk/Contents/Home:$PATH"
#


# For JAVA_HOME 8 uncomment this line
#export JAVA_HOME="/usr/local/Cellar/openjdk@8/1.8.0-392/libexec/openjdk.jdk/Contents/Home"
#export JAVA_HOME="/usr/local/Cellar/openjdk@17/17.0.11/libexec/openjdk.jdk/Contents/Home"
#export JAVA_HOME="/usr/local/Cellar/openjdk@11/11.0.23/libexec/openjdk.jdk/Contents/Home"

#If you need to have node@14 first in your PATH, run:
#export PATH="/usr/local/opt/node@14/bin:$PATH"

#For Debuggin Openmrs
#export MAVEN_OPTS="-Xmx2048m -Xms2048m -XX:PermSize=512m -XX:MaxPermSize=1024m -Xdebug -Xrunjdwp:transport=dt_socket,address=51696,suspend=n,server=y"

#export MAVEN_OPTS="-Xmx2048m -Xms2048m -XX:PermSize=512m -XX:MaxPermSize=1024m "

## Debug configuration for the first application
#export MAVEN_OPTS_DEBUG_1="$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=51696,suspend=n,server=y"

## Debug configuration for the second application
#export MAVEN_OPTS_DEBUG_2="$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=51697,suspend=n,server=y"



#For compilers to find node@14 you may need to set:
#export LDFLAGS="-L/usr/local/opt/node@14/lib"
#export CPPFLAGS="-I/usr/local/opt/node@14/include"

function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

COLOR_DEF=$'%F{yellow}'
COLOR_TIME=$'%f'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%~ ${COLOR_TIME}%@:🌱 ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}❯ '

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls="lsd"
alias vi="nvim"


alias fzf="fzf -m --preview=\"bat --color=always {}\""


# for Fast loading
if [ $commands[kubectl] ]; then
  kubectl() {
    unfunction "$0"
    source <(kubectl completion zsh)
    $0 "$@"
  }
fi

# Auto Start Tmux
if [ -z "$TMUX" ]; then
    # Start tmux if not already inside a tmux session
    if tmux has-session 2>/dev/null; then # 2>/dev/null part redirects any error messages (if no session exists) to /dev/null, effectively suppressing them.
        exec tmux
    else
        exec tmux
    fi
fi



# For Markdown View on Terminal
mdp() {
    pandoc -t plain `find . -maxdepth 1 -iname "${1:-readme.md}"` | less
}

# for Haskell
[ -f "~/.ghcup/env" ] && . "~/.ghcup/env" # ghcup-env



  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/mysql@8.0/bin:$PATH"

if [ ! -L ~/.config/alacritty/alacritty.toml ]; then
    ln -s ~/vim.kitty.tmux/alacritty.toml ~/.config/alacritty/alacritty.toml
fi

if [ ! -L ~/.gitconfig ]; then
    ln -s ~/vim.kitty.tmux/.gitconfig ~/.gitconfig
fi

if [ ! -L ~/.gitattributes ]; then
    ln -s ~/vim.kitty.tmux/.gitattributes ~/.gitattributes
fi
