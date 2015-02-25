execute pathogen#infect()

syntax on
filetype plugin indent on
filetype plugin on

set nocompatible

set cursorline

set clipboard=unnamed

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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2
set statusline+=%F

set wrap
set textwidth=79
set formatoptions=qrn1

autocmd BufWritePre *.pp :%s/\s\+$//e

vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <tab> %
vnoremap <tab> %
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>w <C-w>v<C-w>l

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap gg=G <tab>gg

"" Alt + s: search occurrences of the word under cursor
nnoremap <A-s> :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

let mapleader = ","

"let g:syntastic_enable_signs=1
"let g:syntastic_quiet_warnings=1
"let g:syntastic_auto_loc_list=1
           
runtime macros/matchit.vim

au FocusLost * :wa

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:colorscheme elflord

