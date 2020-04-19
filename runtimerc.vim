" => RUNTIME
let g:vimrc_dir=globpath(g:vim_dir, "vimrc.d")
silent execute "set runtimepath+=" . g:vimrc_dir

" => LOAD VIM FILES
for b:myvimfile in split(globpath(g:vimrc_dir, "*"))
  let b:runtimefile=fnamemodify(b:myvimfile, ":t")
  silent exec "runtime " . b:runtimefile
  unlet b:myvimfile b:runtimefile
endfor

