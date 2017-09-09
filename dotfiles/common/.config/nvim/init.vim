call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
call plug#end()

syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized
set number
set ignorecase
set smartcase
set list
set listchars=tab:»\ ,trail:·,extends:›,nbsp:␣,precedes:‹
"eol:↲,

autocmd FileType php setlocal sw=4 ts=4 expandtab

" Deoplete settings
let g:deoplete#enable_at_startup = 1
" coexist with phpcd
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

" NerdTREE
let NERDTreeShowHidden=1

" Tag reading from stdin, for following NERDTree hooks
autocmd StdinReadPre * let s:std_in=1

" Open NERDTree automatically when vim starts up on opening a directory.
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Open NERDTree automatically when vim starts up if no files were specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
