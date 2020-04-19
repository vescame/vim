" Always show the status line
set laststatus=2

" my custom statuline
" set statusline=\ %{getcwd()}
if exists("*FugitiveHead")
  set statusline=\ %{fugitive#head()}
  set statusline+=\ -
endif
set statusline+=\ %F%m%r%h
set statusline+=%=

" ale status
if exists("*ale#statusline#Count")
  set statusline+=%{LinterStatus()}
endif

set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %L
set statusline+=\ %l:%c

