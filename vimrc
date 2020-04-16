" ~/.vim/vimrc
" ============
" remove all autocommands so i can assign it only once
autocmd!

" all mighty leader key mapped to space
let mapleader=" "

" stop weird bells
set noerrorbells
"" set novisualbell
set visualbell " this way works WSL
set t_vb=
set tm=500

" no vi extended compatibility
set nocompatible

" dark background
set background=dark

" enable syntax hightlight
syntax on

" shared cliboard
set clipboard=unnamed,unnamedplus

" numbers and relative number
set number relativenumber

" file encoding
set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos,mac " *nix as std file type

set autoindent smartindent " smart indentation
set wrap                   " wrap long lines 'on the next line'

" => TABS ARE EVIL
" ================
set shiftwidth=2   " number of spaces to use for (auto)indent step
set tabstop=2      " tab spaces
set softtabstop=2  " tab size when editing, but since tabs are spaces, spaces number when editing
set expandtab      " turn tabs to space

set ignorecase     " ignore case when searching
set smartcase      " when we have different cases, make case sensitive search
set hlsearch       " highlight search results
set incsearch      " search while typing

" show completion in menu
set wildmenu

" fast jump to and get back from closing bracket
set showmatch

" show parcial command line status
set showcmd

" filetype plugins enabled
filetype plugin indent on

" for performance while executing macros, IO is heavy bro
set lazyredraw

" no comment when we create a new line starting by a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" => RUNTIME
for $_RUNTIMEFILE in split(system('ls ~/.vim/after'))
  let b:runtimefile=globpath('~/.vim/after', $_RUNTIMEFILE)
  if filereadable(b:runtimefile)
    runtime $_RUNTIMEFILE
  endif
  unlet $_RUNTIMEFILE
endfor

" => MISC UTILITIES
" =================
" reopen under the last cursor edit position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" read when file changed
set autoread
au FocusGained,BufEnter * checktime

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" undo directory for undo files
try
  if !isdirectory('~/.vim/.undodir')
    throw
  endif
catch
  silent !mkdir -p ~/.vim/.undodir > /dev/null 2>&1
finally
  set undodir=~/.vim/.undodir
  set undofile
endtry

" backup directory
try
  if !isdirectory('~/.vim/.backupdir')
    throw
  endif
catch
  silent !mkdir -p ~/.vim/.backupdir > /dev/null 2>&1
finally
  set backup
  set writebackup
  set backupcopy=no
  set backupdir=~/.vim/.backupdir
endtry

" swap directory
try
  if !isdirectory('~/.vim/.swapdir')
    throw
  endif
catch
  silent !mkdir -p ~/.vim/.swapdir > /dev/null 2>&1
finally
  set directory=~/.vim/.swapdir
endtry

