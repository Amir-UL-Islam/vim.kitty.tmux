!brew  install tmux
!touch ~/.tmux.conf
cat "source-file ~/vim.kitty.tmux/tmux.conf" > .tmux.conf

!brew install nvim
!brew install alacritty

#check if init.vim exist in ~/.config/nvim/init.vim
!touch  ~/.config/nvim/init.vim
cat "source ~/vim.kitty.tmux/init.vim" ~/.config/nvim/init.vim

cat "source ~/vim.kitty.tmux/zshrc" ~/.zshrc
!source  ~/.zshrc


