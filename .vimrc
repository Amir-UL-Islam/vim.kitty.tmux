syntax on
set wrap
set number
set encoding=UTF-8
set scrolloff=10
set incsearch
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set cursorline   
set ignorecase 
set showmode
set hlsearch



"Enable mouse click for nvim
set mouse=a 
set mouse=v

"Fix cursor replacement after closing nvim
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
"Setting background
highlight Normal ctermfg=white ctermbg=black

"Setting plugs
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'raimondi/delimitmate'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'yggdroot/indentline'
Plug 'myusuf3/numbers.vim'
Plug 'junegunn/fzf'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sirver/ultisnips' |  Plug 'honza/vim-snippets'  

"For making the vim-devicons work, you should have a font file in /.local/share/fonts this location
Plug 'ryanoasis/vim-devicons'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
call plug#end()

"Autocmd configurations
autocmd filetype c map <F5> :w <CR> :!clear<CR><CR> :!gcc % -o %< && ./%< <CR>
autocmd filetype c map v<F5> :w <CR> :!clear<CR><CR> :!gcc % -o %< && valgrind ./%< <CR>
autocmd filetype python map <F5> :w <CR> :!clear<CR><CR> :!python3 % <CR>
autocmd filetype cpp map <F5> :w <CR> :!clear<CR><CR> :!make %< && ./%<<CR>
autocmd filetype java map <F5> :w <CR> :!clear<CR><CR> :!java % <CR>

"Custom Mapping
"for Commmenting
map ,cc \cc

"for Uncommentign
map ,uc \cu

"for NERDTree
map ,nt :NERDTree<CR>

"for Personalization
inoremap ,o <CR><CR><up><space><space><space> 

"for resizing the window
map ,re :vertical resize

"for clearing console
map ,ar :!clear<CR><CR>

"for Tagbar
map <F8> :TagbarToggle<CR>

"for changing the window
map ,ww <C-w><C-w> 

"for tabbing
map ,tf <C-S>>
map ,tb <C-S><

"for FZF
map ,f :FZF<CR>

"for clearing search
map ,cs :noh<CR>

"for snippets
map ,eds :UltiSnipsEdit<CR>

"Theme Settings for Gruvbox
"let g:gruvbox_italic=1
"colorscheme gruvbox
"set termguicolors
"let g:gruvbox_termcolors=16

"For solarized.vim
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

"Statusber Settings
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1

"Kite Settings
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2 " always display the status line

"for tabbar
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

"for fiz finder 
"to move the window to the middle, increasing the size of the preview window
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }


"for rainbow bracket
let g:rainbow_active = 1

"for fonts
let g:airline_powerline_fonts = 1

"for gitgutter
set updatetime=100

"for snippets
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger=",<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Emoji shortcuts
ab :white_check_mark: ✅
ab :warning: ⚠️
ab :bulb: 💡
ab :pushpin: 📌
ab :bomb: 💣
ab :pill: 💊
ab :construction: 🚧
ab :pencil: 📝
ab :point_right: 👉
ab :thumb: 👍
ab :book: 📖
ab :link: 🔗
ab :wrench: 🔧
ab :info: 🛈
ab :telephone: 📞
ab :email: 📧
ab :computer: 💻
ab :sandclock: ⏳
ab :stopwatch: ⏱
ab :arrow_right: ➡️
ab :arrow_left: ⬅️
ab :arrow_up: ⬆️
ab :arrow_down: ⬇️
ab :arrow_sides: ↔️
ab :arrow_updown: ↕️
ab :arrow_upleft: ↖️
ab :arrow_upright: ↗️
ab :arrow_downleft: ↘️
ab :arrow_downright: ↙️
ab :arrow_returnup: ⤴️
ab :arrow_returndown: ⤵️
ab :arrow_returnright: ↪️
ab :arrow_returnleft: ↩️
ab :rose: 🌹
ab :sad: ☹️
ab :mad: 😤
ab :purpel_heart: 💜

" FOR UNIT TESTING
map ,pn :! python -m unittest <CR>
