call plug#begin("~/.local/share/nvim/plugged")
Plug 'elmcast/elm-vim'

Plug 'Shougo/deoplete.nvim'
Plug 'pbogut/deoplete-elm'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'

Plug 'takac/vim-hardtime'
call plug#end()

scriptencoding utf-8

" Enable filetype-specific indenting, syntax, and plugins
filetype plugin indent on
set nocompatible
syntax on

let g:elm_format_fail_silently = 1

" Set to auto read when a file is changed from the outside
set autoread

" use indents of 2 spaces, and have them copied down lines:
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set number

syntax enable
set background=light
colorscheme solarized

let mapleader = ","

set splitbelow
set splitright

set directory=/tmp/
nnoremap Y y$
vnoremap <Leader>y "+y
vnoremap <Leader>p "+p

" Search Config

" show the `best match so far' as search strings are typed:
set incsearch

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>ag :Ag<CR>

let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

" let g:hardtime_default_on = 1
" let g:hardtime_maxcount = 20
