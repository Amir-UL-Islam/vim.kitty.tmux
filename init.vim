set number
syntax on
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=2
set tabstop=4

"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
"Setting background
highlight Normal ctermfg=white ctermbg=black
"Setting plugs
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'raimondi/delimitmate'
call plug#end()
"Requirment for vim-autoformat
"Autocmd configurations
map <F5> :w <CR> :!gcc % -o %< && ./%< <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -o %:r % && ./%:r<CR>
