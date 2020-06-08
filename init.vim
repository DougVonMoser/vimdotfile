call plug#begin("~/.local/share/nvim/plugged")

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'andys8/vim-elm-syntax'
Plug 'majutsushi/tagbar'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

Plug 'tonchis/vim-to-github'
Plug 'neovimhaskell/haskell-vim'

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

" when scrolling or finding, leave some buffer lines
set so=8

set number

syntax enable
" set background=light
" colorscheme solarized

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

let g:mix_format_on_save = 1
let g:mix_format_silent_errors = 1

" let g:hardtime_default_on = 1
" let g:hardtime_maxcount = 20
"
let g:javascript_plugin_jsdoc = 1





let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}



" Keybindings
nmap <leader>r <Plug>(coc-rename)
nmap <silent> <leader>s <Plug>(coc-fix-current)
nmap <silent> <leader>S <Plug>(coc-codeaction)
nmap <silent> <leader>a <Plug>(coc-diagnostic-next)
nmap <silent> <leader>A <Plug>(coc-diagnostic-next-error)
nmap <silent> <leader>d <Plug>(coc-definition)
nmap <silent> <leader>g :call CocAction('doHover')<CR>
nmap <silent> <leader>u <Plug>(coc-references)
nmap <silent> <leader>p :call CocActionAsync('format')<CR>




" BELOW IS COPY AND PASTED!!!
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
"set signcolumn=yes
