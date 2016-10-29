call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sickill/vim-monokai'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'chrisbra/sudoedit.vim'
Plug 'scrooloose/nerdtree'
"Plug 'ntpeters/vim-better-whitespace'
"Plug 'nathanaelkane/vim-indent-guides'

call plug#end()

" Use UTF-8 encoding
set encoding=utf-8

" View line numbers
set number

" Display
set tabstop=4
set shiftwidth=4
"set expandtab
"set softtabstop=4

" Show tabs & trailing space
"set listchars=tab:»·,trail:·
set listchars=tab:▸\ ,trail:·,eol:¬
set list

" Configure vim-airline
let g:airline_theme='simple'
set laststatus=2

" Configure vim-monokai with syntax highlighting
colorscheme monokai
syntax enable
let g:load_doxygen_syntax=1

" Configure vim-indent-guides with suitable colours
"let g:indent_guides_auto_colors=0
"hi IndentGuidesOdd  ctermbg=235
"hi IndentGuidesEven ctermbg=237
" Also load on startup
"let g:indent_guides_enable_on_vim_startup=1

"Use system clipboard
set clipboard+=unnamedplus

" Disable UDLR keys (prefer HJKL)
noremap <Up>	<NOP>
noremap <Down>	<NOP>
noremap <Left>	<NOP>
noremap <Right>	<NOP>

" TODO: commenting plugin -> commentary/tcomment/nerdcommenter
