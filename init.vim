set number
syntax on
set expandtab
set autoindent
set softtabstop=16
set shiftwidth=4
set tabstop=4

"Enable mouse click for nvim
set mouse=a

"Fix cursor replacement after closing nvim
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
"Setting background
"highlight Normal ctermfg=white ctermbg=black
"Setting plugs
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
call plug#end()

"Autocmd configurations
map <F5> :w <CR> :!gcc % -o %< && ./%< <CR>
autocmd filetype python nmap <F5> :w <bar> !python3 % <CR>
autocmd FileType cpp nmap <buffer> <F5> :w<bar>!g++ -o %:r % && ./%:r<CR>
autocmd FileType c,cpp set equalprg=indent\ 2>/dev/null\ -gnu;true

"Custom Map
"for Commmenting
map ,c \cc
"for Uncommentign
map ,cu \cu
"for NERDTree
map ,t :NERDTree<CR>
"for Personalization
map ,o a<CR><ESC>ko 
"for resizing the window
map ,re :vertical resize

"Airline Settings
"" unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'


"Theme Settings
let g:gruvbox_italic=1
colorscheme gruvbox
set termguicolors
let g:gruvbox_termcolors=16

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
