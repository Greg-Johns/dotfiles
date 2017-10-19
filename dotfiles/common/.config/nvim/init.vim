let g:python_host_prog = '/usr/bin/python3'
let g:python3_host_prog = '/usr/bin/python3'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
" Open NERDTree automatically when vim starts up on opening a directory.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

Plug 'arrufat/vala.vim', {'for': 'vala'}
Plug 'udalov/kotlin-vim'
Plug 'rust-lang/rust.vim'
Plug 'reasonml-editor/vim-reason'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'

Plug 'editorconfig/editorconfig-vim'

Plug 'autozimu/LanguageClient-neovim', {'do': ':UpdateRemotePlugins'}
let g:languageclient_servercommands = {
  \ 'python': ['pyls'],
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ }
let g:LanguageClient_autoStart = 1
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/echodoc.vim'
let g:echodoc#enable_at_startup = 1

Plug 'Shougo/denite.nvim'
Plug 'ervandew/supertab'

Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized

set noshowmode
set mouse=a
set hidden
set incsearch
set nobackup
set noswapfile
set number
set ignorecase
set smartcase
set list
set listchars=tab:»\ ,trail:·,extends:›,nbsp:␣,precedes:‹
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

autocmd FileType javascript setlocal sw=2 ts=2
autocmd FileType html setlocal sw=2 ts=2
autocmd FileType reason setlocal sw=2 ts=2
autocmd FileType ocaml setlocal sw=2 ts=2

autocmd FileType yaml setlocal sw=2 ts=2
autocmd FileType json setlocal sw=2 ts=2
