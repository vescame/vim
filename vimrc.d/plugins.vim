" ~/.vim/vimrc.d/plugins.vim
"
" auto install plug.vim
if has("unix")
  let b:autoloadpath="~/.vim/autoload/plug.vim"
else
  let b:autoloadpath="~/vimfiles/autoload/plug.vim"
endif

if empty(glob(b:autoloadpath))
  silent execute "!curl -fLo " . b:autoloadpath . "--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has("unix")
  let b:pluggedpath="~/.vim/plugged"
else
  let b:pluggedpath="~/vimfiles/plugged"
endif

call plug#begin(b:pluggedpath)
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
call plug#end()

