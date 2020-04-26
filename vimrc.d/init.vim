" init.vim
" file initializes the vimrc.d sourcing and plugins
" ===============================================

" vimrc.d  directory
let g:vimrc_dir=globpath(g:vim_dir, "vimrc.d")

" load useful functions
silent execute "set runtimepath+=" . g:vimrc_dir

" early run time useful functions
runtime functions.vim

" run time plugin manager and conf loader
runtime plugins.vim

