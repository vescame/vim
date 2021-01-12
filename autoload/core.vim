" core.vim
" file containing useful functions to be loaded at runtime

" add path to run time path
function core#appendToRuntimePath(path)
  if isdirectory(a:path)
    silent execute "set runtimepath+=" . a:path
  endif
endfunction

" for directory creation
function core#createDir(dirpath)
  if !isdirectory(a:dirpath)
    if has("unix")
      silent execute "!/bin/sh -c 'mkdir "
            \ . expand(fnameescape(a:dirpath))
            \ . " > /dev/null 2>&1'"
    else
      silent execute "!mkdir " . expand(fnameescape(a:dirpath))
    endif
  endif
endfunction

