call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/neocomplete.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'elmcast/elm-vim'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'


" Initialize plugin system
call plug#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces  
set expandtab

let g:ale_elm_make_use_global = 1
let g:elm_jump_to_error = 1
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

let NERDTreeShowHidden=1

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" sets backspace to work as expected
set backspace=indent,eol,start

set shell=/bin/zsh
set cursorline
set number " line numbers
set nowrap " no line wrapping

let g:airline#extensions#ale#enabled = 1

let g:ale_javascript_eslint_executable = '$(npm bin)/eslint'
let g:ale_linters = {'javascript': ['eslint'], 'jsx': ['eslint']}

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_show_hidden = 1
