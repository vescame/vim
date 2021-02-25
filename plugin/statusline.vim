" statuline.vim
" custom/useful/simple statusline

function HasErrors()
  let l:alestats = LinterStatus()
  if l:alestats == 'NERR'
    return ""
  else
    return l:alestats
  endif
endfunction

" Always show the status line
set laststatus=2

" my custom statuline

" git status from fugitive
set statusline=\ %{fugitive#head()}
set statusline+=\ -

set statusline+=\ %f%m%r
set statusline+=%=

" ale status
set statusline+=%{HasErrors()}

set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %c
set statusline+=\ 

