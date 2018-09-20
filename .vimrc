
call plug#begin('~/.vim/plugged')

Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'scrooloose/nerdtree'
Plug 'elmcast/elm-vim'
Plug 'vim-syntastic/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/neocomplete.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1

let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}
     
call neocomplete#util#set_default_dictionary(
  \ 'g:neocomplete#sources#omni#input_patterns',
  \ 'elm',
  \ '\.')


let NERDTreeShowHidden=1


set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//


" sets backspace to work as expected
set backspace=indent,eol,start


" syntastic eslint wiring
set shell=/bin/zsh
let g:syntastic_debug=3


" Enable the eslint checker
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_generic = 1
let g:syntastic_javascript_eslint_exec = '/bin/zsh'
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_javascript_eslint_args='-f compact'


" syntastics recommended beginner settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

scriptencoding utf-8

if !exists(':SyntasticCheck')
  finish
endif

let s:error_symbol = get(g:, 'airline#extensions#syntastic#error_symbol', 'E:')
let s:warning_symbol = get(g:, 'airline#extensions#syntastic#warning_symbol', 'W:')

function! airline#extensions#syntastic#get_warning()
  return airline#extensions#syntastic#get('warning')
endfunction

function! airline#extensions#syntastic#get_error()
  return airline#extensions#syntastic#get('error')
endfunction

function! airline#extensions#syntastic#get(type)
  let _backup = get(g:, 'syntastic_stl_format', '')
  let is_err = (a:type  is# 'error')
  if is_err
    let g:syntastic_stl_format = get(g:, 'airline#extensions#syntastic#stl_format_err', '%E{[%e(#%fe)]}')
  else
    let g:syntastic_stl_format = get(g:, 'airline#extensions#syntastic#stl_format_warn', '%W{[%w(#%fw)]}')
  endif
  let cnt = SyntasticStatuslineFlag()
  if !empty(_backup)
    let g:syntastic_stl_format = _backup
  endif
  if empty(cnt)
    return ''
  else
    return (is_err ? s:error_symbol : s:warning_symbol).cnt
  endif
endfunction

function! airline#extensions#syntastic#init(ext)
  call airline#parts#define_function('syntastic-warn', 'airline#extensions#syntastic#get_warning')
  call airline#parts#define_function('syntastic-err', 'airline#extensions#syntastic#get_error')
endfunction