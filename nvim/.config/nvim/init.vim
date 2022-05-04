call plug#begin()

" plugins
Plug 'SirVer/ultisnips'

call plug#end()

" use UTF-8 encoding
set encoding=utf-8

" view line numbers
"set number

" display
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" show tabs, trailing space & EOL
"set listchars=tab:▸\ ,trail:·,eol:¬
"set list

"use system clipboard
set clipboard+=unnamedplus

" disable UDLR keys (prefer HJKL)
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

" enable syntax highlighting
syntax enable
let g:load_doxygen_syntax=1

" enable filetype plugins
filetype plugin indent on
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType json setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType PKGBUILD setlocal tabstop=2 shiftwidth=2 expandtab

" enable nvim-specific inccommand
if has('nvim')
    set inccommand=nosplit
endif

" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
