" gvimrc
" loaded when has('gui_running')

let s:myopts_set=0
function! ToggleGuiOpts()
  if s:myopts_set
    set guioptions+=T
    set guioptions+=m
    set guioptions+=r
    let s:myopts_set=0
  else
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    let s:myopts_set=1
  endif
endfunction

autocmd VimEnter * call ToggleGuiOpts()
command GuiOpts :call ToggleGuiOpts()

" from help tm: 
" Define a tip for a menu or tool. {only in X11 and Win32 GUI}
set tm=500

" set DejaVu font as default
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Book\ 12

" termcap visualbell
set t_vb=

