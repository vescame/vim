" plugins.vim
" file initializes the vim-plug plugin and loads configuration
" ===============================================

let s:vim_plug_path=g:vim_dir . "/autoload/plug.vim"
if !filereadable(s:vim_plug_path)
  silent execute '!curl -fLo '
        \ . s:vim_plug_path
        \ . ' --create-dirs '
        \ . 'https://raw.githubusercontent.com/'
        \ . 'junegunn/vim-plug/master/plug.vim'

  autocmd VimEnter * PlugInstall --sync
        \ | if has('gui_running')
        \ |   source $MYVIMRC
        \ |   source $MYGVIMRC
        \ |   call ToggleGuiOpts()
        \ | else
        \ |   source $MYVIMRC
        \ | endif
endif

" plugins that should be loaded before files in vimrc.d/plugin
let s:plugin_before_dir=globpath(g:vimrc_dir, "plugin.before")

call AppendToRuntimePath(s:plugin_before_dir)

for s:file in split(globpath(s:plugin_before_dir, "*"))
  silent execute "runtime" fnamemodify(s:file, ":t")
endfor

" plugins
let s:plugins_dir=g:vim_dir . "/plugged"

call plug#begin(s:plugins_dir)
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'vescame/vim-colors-off'
call plug#end()

if isdirectory(s:plugins_dir)
  " plugin configuration files
  let s:plugin_conf_dir=globpath(g:vimrc_dir, "plugin.conf")

  call AppendToRuntimePath(s:plugin_conf_dir)

  for s:file in split(globpath(s:plugin_conf_dir, "*"))
    silent execute "runtime" fnamemodify(s:file, ":t")
  endfor
endif

