" statuline.vim
" sets some custom and useful functions to vim core statusline
" ===============================================

" Always show the status line
set laststatus=2

" my custom statuline
" set statusline=\ %{getcwd()}

" git status from fugitive
set statusline=\ %{fugitive#head()}
set statusline+=\ -

set statusline+=\ %F%m%r%h
set statusline+=%=

" ale status
set statusline+=%{LinterStatus()}

set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %L
set statusline+=\ %l:%c
set statusline+=\ 
