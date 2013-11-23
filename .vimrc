execute pathogen#infect()
call pathogen#incubate()

syntax on
filetype plugin indent on
set nocompatible

set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set modelines=0

set showmode
set showcmd

set gdefault
set incsearch
set showmatch
set hlsearch

set undofile

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap gg=G <tab>gg

let mapleader = ","

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_auto_loc_list=1
           
runtime macros/matchit.vim

au FocusLost * :wa
