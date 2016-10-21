call plug#begin()

" Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'sickill/vim-monokai'

" Git
Plug 'airblade/vim-gitgutter'

" Config
Plug 'tpope/vim-sensible'
Plug 'chrisbra/sudoedit.vim'

call plug#end()

" View line numbers
set number

" Configure vim-airline
let g:airline_theme='simple'

" Configure vim-monokai with syntax highlighting
colorscheme monokai

" Enable clipboard yanking
set clipboard+=unnamedplus
