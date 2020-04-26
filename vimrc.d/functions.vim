" functions.vim
" file containing useful functions for vim basic related
" ===============================================

" add path to run time path
function! AppendToRuntimePath(path)
  if isdirectory(a:path)
    silent execute "set runtimepath+=" . a:path
  endif
endfunction

" for directory creation
function! CreateDir(dirpath)
  if !isdirectory(a:dirpath)
    if has("unix")
      silent execute "!mkdir "
            \ . expand(fnameescape(a:dirpath))
            \ . " > /dev/null 2>&1"
    else
      silent execute "!mkdir " . expand(fnameescape(a:dirpath))
    endif
  endif
endfunction

