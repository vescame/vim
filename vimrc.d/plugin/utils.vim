" reopen under the last cursor edit position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$")
      \   | exe "normal! g'\""
      \ | endif

" read when file changed
set autoread
autocmd FocusGained,BufEnter * checktime

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif
