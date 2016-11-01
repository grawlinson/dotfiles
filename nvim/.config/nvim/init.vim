call plug#begin()

" plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sickill/vim-monokai'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'chrisbra/sudoedit.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

call plug#end()

" use UTF-8 encoding
set encoding=utf-8

" view line numbers
set number

" display
set tabstop=4
set shiftwidth=4
set expandtab
"set softtabstop=4

" show tabs & trailing space
set listchars=tab:▸\ ,trail:·,eol:¬
set list

" vim-airline - monokai + powerline
let g:airline_theme='base16_monokai'
let g:airline_powerline_fonts = 1
set laststatus=2

" configure vim-monokai with syntax highlighting
colorscheme monokai
syntax enable
let g:load_doxygen_syntax=1

" enable filetype plugins
filetype plugin on

"use system clipboard
set clipboard+=unnamedplus

" disable UDLR keys (prefer HJKL)
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>
