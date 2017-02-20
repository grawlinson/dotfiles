call plug#begin()

" plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sickill/vim-monokai'
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/sudoedit.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'pearofducks/ansible-vim'

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

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type = "quickfix"

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#use_cache = 1
let g:deoplete#sources#go#json_directory = '~/.cache/deoplete/go'
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
set completeopt+=noinsert
set completeopt+=noselect
set completeopt-=preview
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
    \ 'tern#Complete'
\]

" vim-racer
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:rustfmt_autosave = 1

" ansible-vim
let g:ansible_extra_syntaxes = "sh.vim ruby.vim"
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1

