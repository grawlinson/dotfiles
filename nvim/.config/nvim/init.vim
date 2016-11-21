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
Plug 'vim-syntastic/syntastic'

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

" show tabs, trailing space & EOL
set listchars=tab:▸\ ,trail:·,eol:¬
set list

"use system clipboard
set clipboard+=unnamedplus

" disable UDLR keys (prefer HJKL)
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

" vim-airline - monokai + powerline
let g:airline_theme='base16_monokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2

" configure vim-monokai with syntax highlighting
colorscheme monokai
syntax enable
let g:load_doxygen_syntax=1

" enable filetype plugins
filetype plugin on

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" checkers
let g:syntastic_c_checkers = ['gcc', 'cppcheck']
let g:syntastic_cpp_checkers = ['gcc', 'cppcheck']
let g:syntastic_javascript_checkers = ['eslint']

