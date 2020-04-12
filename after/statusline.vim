" Always show the status line
set laststatus=2

function! GitBranch()
  let l:branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  return strlen(l:branchname) > 0 ? l:branchname : ''
endfunction

" assign and renew variable 
au BufEnter * let b:mygitbranch=GitBranch() 

" my custom statuline
set statusline=\ %{b:mygitbranch}
set statusline+=\ pwd:\ %{getcwd()}
set statusline+=\ -
set statusline+=\ %f%m%r%h
set statusline+=%=
set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}]
set statusline+=\ %p%%
set statusline+=\ %l:%c

