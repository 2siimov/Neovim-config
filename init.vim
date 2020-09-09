let mapleader=" "

let g:SnazzyTransparent = 1
colorscheme snazzy

noremap J 5j
noremap K 5k
noremap H 5h
noremap L 5l

syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu 
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap <LEADER><CR> :nohlsearch<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sl :set splitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map ; :

map Q :q<CR>
map W :w<CR>

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k

map tn :tabe<CR>
map tl :tabnext<CR>
map th :-tabnext<CR>
map tq :tabclose<CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
