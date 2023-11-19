#export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_TYPE=en_US.UTF-8

alias ls="lsd"
alias vi="nvim"
export PS1="%~ %*:👀>_"

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
    [ -z "$TMUX" ] && exec tmux attach
esac



