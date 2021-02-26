" vimrc
" author: vescm
" year: 2020

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

" file encoding
set encoding=utf-8

" Unix for default file format
set ffs=unix,dos,mac
setglobal fileencoding=utf-8

" Make it obvious where 80 characters is
set textwidth=79
set colorcolumn=+1

" file type plugins enabled
filetype plugin indent on

" smart indentation
set autoindent smartindent
" wrap long lines 'on the next line'
set wrap
" since wrap is enabled, wrap starts at the 80th
set formatoptions+=t

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

" show completion in menu
set wildmenu

" list completion, better way since it doesnt complete non unique commands
set wildmode=list:longest,list:full

" ignore files when in wide mode
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

