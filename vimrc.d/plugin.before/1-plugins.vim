" ~/.vim/vimrc.d/plugins.vim
" auto install plug.vim
let b:vim_plug_path=g:vim_dir . "/autoload/plug.vim"
if !filereadable(b:vim_plug_path)
  execute '!curl -fLo '
        \ . b:vim_plug_path
        \ . ' --create-dirs '
        \ . 'https://raw.githubusercontent.com/'
        \ . 'junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
let b:plugins_dir=g:vim_dir . "/plugged"
call plug#begin(b:plugins_dir)
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'pbrisbin/vim-colors-off', { 'on': 'colorscheme' }
call plug#end()

