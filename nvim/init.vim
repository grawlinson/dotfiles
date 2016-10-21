call plug#begin()

" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'sickill/vim-monokai'

" Git
Plug 'airblade/vim-gitgutter'

call plug#end()

" Use UTF-8 encoding
set encoding=utf-8

" View line numbers
set number

" Configure vim-airline
let g:airline_theme='simple'
set laststatus=2

" Configure vim-monokai with syntax highlighting
syntax enable
colorscheme monokai

" Enable clipboard yanking
set clipboard+=unnamedplus
