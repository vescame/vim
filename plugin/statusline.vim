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

" coc current function and status
set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}

" git status from fugitive
set statusline+=%{FugitiveHead()}
set statusline+=\ -

set statusline+=\ %t%m%r
set statusline+=%=

" ale status
set statusline+=%{HasErrors()}

set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}]\ [%c/%l\ %p%%\ %L]

" space at the beginning
set statusline^=\ 

" space at the end
set statusline+=\ 

