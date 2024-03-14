" vimrc
" author: vescm
" year: 2020

set background=dark

" no vi extended compatibility
" should be set at the very beginning
set nocompatible

" spell
set spelllang=en_gb,pt_br

" remove all auto commands so i can assign it only once
autocmd!

" leader key mapped to space
let mapleader=" "

" set my ~/[._]vim directory (for portable config)
let g:vim_dir=fnamemodify($MYVIMRC, ":h")

" search recursively
set path+=**

" completely stop bells
set visualbell
set t_vb=

" enable syntax highlight
syntax on

" backspace for deleting too
set backspace=indent,eol,start

" numbers and relative number
set number relativenumber

" Unix for default file format
set ffs=unix,dos,mac
setglobal fileencoding=utf-8
" file encoding
set encoding=utf-8

" let g:limit_columns=1

" autocomplete words with dash
set iskeyword+=\-

" file type plugins enabled
filetype plugin indent on

" smart indentation
set autoindent smartindent

" "soft wrap" lines
set wrap
set nolist
set linebreak

" tabs are evil
" number of spaces to use for (auto)indent step
set shiftwidth=2
" tab spaces
set tabstop=2
" tab size when editing, but since tabs are spaces, spaces number when editing
set softtabstop=2
" turn tabs to space
set expandtab

" ignore case when searching
set ignorecase
" when we have different cases, make case sensitive search
set smartcase
" highlight search results
set hlsearch
" search while typing
set incsearch

" use vertical diff by default
set diffopt+=vertical

" buffer switch without having to save (godly)
set hidden

" by default, when vertically splitting, use right for the new window
set splitbelow
set splitright

" do not redraw buffer while executing macros
set lazyredraw

" read content from disk when buffered file changed
set autoread

" hide cursor when writing
set mousehide

" show completion in menu
set wildmenu

" list completion, better way since it doesnt complete non unique commands
set wildmode=list:longest,list:full

" ignore files when in wild mode
set wildignore+=*swp,*.class,*.pyc,*~,*.png,*.jpg,*.gif,*.zip
if has("win32")
  set wildignore+=*\\tmp\\*,*.exe,.git\*,.hg\*,.svn\*
else
  set wildignore+=*/tmp/*,*.o,*.obj,*.so,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" scroll when lasts 5 lines up/down
set scrolloff=5

" highlight matching bracket
set showmatch

" show partial command line status
set showcmd

