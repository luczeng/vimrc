" Key bindings
inoremap jj <ESC>
let mapleader=" "                           " change this for us keyboards
map <Leader>h :wincmd h<CR>                 " these are to jump from tabs to tabs easily
map <Leader>j :wincmd j<CR>
map <Leader>k :wincmd k<CR>
map <Leader>l :wincmd l<CR>
inoremap jj <ESC>                           " select whole file
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"==============================================
"" Plugins
"==============================================
call plug#begin('~/.vim/plugged')

    "-----------------=== Project navigation ===-----------------"
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'

    "-----------------=== Languages support ===-----------------"
    Plug 'Valloric/YouCompleteMe'
    Plug 'scrooloose/nerdcommenter'         " Comment stuff out
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } "python support

    "------------------------=== Others ===---------------------"
    Plug 'jnurmine/Zenburn'
    Plug 'tpope/vim-surround'

call plug#end()

"==============================================
"" General settings
"==============================================
"syntax enable                               " does this really do anything?

" Display info
set relativenumber
set showmatch                               " shows matching part of bracket pairs (), [], {}
set ruler

" Indent
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

" Color scheme
colors zenburn
set t_Co=256                                " set 256 colors

set enc=utf-8	                            " utf-8 by default

"==============================================
"" Search settings
"==============================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results
nnoremap <Leader> :noh<cr>                  " to disable hightlights

"=============================================
"" Python settings (pymode)
"=============================================

" Format
let g:pymode_options_max_line_length = 120

" Linter
let g:pymode_lint_unmodified = 0            " check code on every write (change if big files?)

" Definitions
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'new'

let g:pymode_syntax= 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

"============================================
"" NERDTree settings
"============================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
nnoremap <Leader>f :NERDTreeToggle<Enter>
let NERDTreeMinimalUI = 1                   " Disable help
let NERDTreeDirArrows = 1