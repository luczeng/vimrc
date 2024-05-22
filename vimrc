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

" Automatically installs vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins
call plug#begin('~/.vim/plugged')

    "-----------------=== Project navigation ===-----------------"
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'

    "-----------------=== Languages support ===-----------------"
    Plug 'Valloric/YouCompleteMe'           " READ INSTALL INSTRUCTION ON GITHUB PAGE
    Plug 'scrooloose/nerdcommenter'         " Comment stuff out
    Plug 'iamcco/markdown-preview.vim'      " type MarkdownPreview to view md
    Plug 'chrisbra/csv.vim'
    Plug 'dense-analysis/ale'
    
    "-----------------=== Git support ===-----------------------"
    Plug 'tpope/vim-fugitive'

    "-----------------=== Formats ===---------------------------"
    Plug 'elzr/vim-json'

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
set shortmess-=S                            " shows number of count when searching (and also other things?)

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
"" Ale settings (ALE)
"=============================================
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['flake8', 'pylint', 'pyright']}
let g:ale_fixers = {'python': ['black', 'isort']}
let g:ale_python_black_options='--line-length=79'
:nnoremap gd :ALEGoToDefinition -vsplit 

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
