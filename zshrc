export LANG=en_US.UTF-8
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
    [ -z "$TMUX" ] && exec tmux
esac



