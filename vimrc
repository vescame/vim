" yet another vim config
" 2020
" github.com/vescame
" v.escame@gmail.com

" no vi extended compatibility
" should be set at the very beginning
set nocompatible

" remove all auto commands so i can assign it only once
autocmd!

" set my ~/[._]vim directory (for portable config)
let g:vim_dir=fnamemodify($MYVIMRC, ":h")

" search recursively
set path+=**

" stop weird bells
set noerrorbells
" set visualbell instead of beeps
set visualbell " this way works WSL

" dark background
set background=dark

" enable syntax highlight
syntax on

" shared clipboard
set clipboard=unnamed,unnamedplus

" backspace for deleting too
set backspace=indent,eol,start

" numbers and relative number
set number relativenumber

" highlight current line
set cursorline

" file encoding
set encoding=utf-8
set ffs=unix,dos,mac " unix for default file format
setglobal fileencoding=utf-8

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

" highlight matching bracket
set showmatch

" show partial command line status
set showcmd

" file type plugins enabled
filetype plugin indent on

" for performance while executing macros, IO is heavy bro
set lazyredraw

" no comment when we create a new line starting by a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" by default, when vertically splitting, use right for the new window
set splitright

" initialize vimrc files load
runtime vimrc.d/init.vim

