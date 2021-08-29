" misc.vim
" miscelaneous configuration

" reopen under the last cursor edit position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$")
      \   | exe "normal! g'\""
      \ | endif

" check when file in buffers have changed
autocmd FocusGained,BufEnter * checktime

" no comment when we create a new line starting by a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" expose special characters
if $LANG =~ "utf-8"
  set list listchars=tab:»·,trail:·,nbsp:·
else
  set list listchars=tab:>-,trail:.,nbsp:%
endif

" share clipboard with the system
if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

" highlight the 80th column if g:limit_columns is set
if exists("g:limit_columns") && g:limit_columns == 1
  set textwidth=80
  set colorcolumn=+1
endif

