" yet another vim config
" 2020
" github.com/vescame
" v.escame@gmail.com

" remove all autocommands so i can assign it only once
autocmd!

" set my ~/[._]vim directory (for portable config)
let g:vim_dir=fnamemodify($MYVIMRC, ":h")

" add vimrc.d to runtimepath
let g:vimrc_dir=globpath(g:vim_dir, "vimrc.d")
silent execute "set runtimepath+=" . g:vimrc_dir

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

" dark background in gui mode, without the need to assign a colorscheme
if has("gui")
  highlight Normal guifg=white guibg=black
endif

" enable syntax hightlight
syntax on

" shared cliboard
set clipboard=unnamed,unnamedplus

" backspace for deleting too
set backspace=indent,eol,start

" numbers and relative number
set number relativenumber

" highlight current line
set cursorline

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

" highlight matching bracket
set showmatch

" show parcial command line status
set showcmd

" filetype plugins enabled
filetype plugin indent on

" for performance while executing macros, IO is heavy bro
set lazyredraw

" no comment when we create a new line starting by a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" by default, when vertically spliting, use right for the new window
set splitright

" runtime essential files
runtime plugins.vim
if exists("*plug#begin")
  runtime runtimerc.vim
endif
runtime helpers.vim

