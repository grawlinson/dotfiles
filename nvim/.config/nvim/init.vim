call plug#begin()

" plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/sudoedit.vim'
Plug 'vim-syntastic/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'editorconfig/editorconfig-vim'

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

" vim-airline - solarized + powerline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2

" enable syntax highlighting
syntax enable
let g:load_doxygen_syntax=1

" enable filetype plugins
filetype plugin indent on
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType json setlocal tabstop=2 shiftwidth=2 expandtab

" enable nvim-specific inccommand
if has('nvim')
    set inccommand=nosplit
endif

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" checkers
let g:syntastic_c_checkers = ['gcc', 'cppcheck']
let g:syntastic_cpp_checkers = ['gcc', 'cppcheck']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_rust_checkers = ['rustc']

" python host paths
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
