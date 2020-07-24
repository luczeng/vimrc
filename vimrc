"==============================================
"" Key bindings
"==============================================
" General
inoremap jj <ESC>
let mapleader=" "                           " change this for us keyboards
inoremap jj <ESC>                           " select whole file

" Moving around
map <Leader>h :wincmd h<CR>                 " these are to jump from tabs to tabs easily
map <Leader>j :wincmd j<CR>
map <Leader>k :wincmd k<CR>
map <Leader>l :wincmd l<CR>
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" Copying, selecting
nnoremap Y v$y
nnoremap vA ggVG$

"==============================================
"" Plugins
"==============================================
call plug#begin('~/.vim/plugged')

    "-----------------=== Project navigation ===-----------------"
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'

    "-----------------=== Languages support ===-----------------"
    Plug 'Valloric/YouCompleteMe'           " READ INSTALL INSTRUCTION ON GITHUB PAGE
    Plug 'scrooloose/nerdcommenter'         " Comment stuff out
    Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } "python support
    Plug 'iamcco/markdown-preview.vim'      " type MarkdownPreview to view md

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

" Backups (should I add undo dir?)
set noswapfile

" Line width
set textwidth=120

" Indent
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

" Enable backspace key
set backspace=indent,eol,start

" Color scheme
colors zenburn
set t_Co=256                                " set 256 colors

set enc=utf-8	                            " utf-8 by default

"==============================================
"" Search settings
"==============================================
set incsearch                               " incremental search
set hlsearch                                " highlight search results
set ignorecase
set smartcase                               " if the search pattern contains upper letter, use it
nnoremap <Leader> :noh<cr>                  " to disable hightlights

"=============================================
"" Python settings (pymode)
"=============================================

" Format
let g:pymode_options_max_line_length = 120  " btw how does this interact with textwidth?

" Linter
let g:pymode_lint_unmodified = 0            " check code on every write (change if big files?)

" Definitions
" Rope
let g:pymode_rope = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_rope_goto_definition_bind = '<leader>pg'
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_organize_imports_bind = '<leader>pro'
let g:pymode_rope_show_doc_bind = '<leader>pd'
let g:pymode_rope_rename_bind = '<leader>prr'

" Syntax and display info
let g:pymode_syntax= 1                                              " Turn on pymode's syntax
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 0
let g:pymode_syntax_highlight_equal_operator = g:pymode_syntax_all
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all               " Highlight indent errors
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
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>F : NERDTreeFind<CR>
let NERDTreeMinimalUI = 1                   " Disable help
let NERDTreeDirArrows = 1

"============================================
"" Ctrl p settings
"============================================
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " ignore files in .gitignore
