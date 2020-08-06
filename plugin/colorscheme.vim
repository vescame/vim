" colorscheme.vim
" simply sets a vim colorscheme (needed because depends on plugin load)
" ===============================================

" pretty basic colors, nothing colorful
" colorscheme off
colorscheme default

if g:colors_name == "off" && &shell == "powershell.exe"
  highlight CursorLine ctermbg=8 ctermfg=0
  highlight CursorLineNr ctermbg=8 ctermfg=1
  highlight LineNr ctermfg=8
  highlight StatusLine ctermbg=7 ctermfg=0
  highlight Visual ctermbg=7 ctermfg=0
  highlight StatusLineNC ctermbg=8 ctermfg=1
  highlight TabLine ctermbg=8 ctermfg=11
  highlight TabLineFill ctermbg=8 ctermfg=11
  highlight TabLineSel ctermbg=7 ctermfg=0
  highlight VertSplit ctermbg=9 ctermfg=9
endif

