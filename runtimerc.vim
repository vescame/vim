" => RUNTIME
" => LOAD VIM FILES
for b:myvimfile in split(globpath(g:vimrc_dir, "*"))
  let b:runtimefile=fnamemodify(b:myvimfile, ":t")
  silent exec "runtime " . b:runtimefile
  unlet b:myvimfile b:runtimefile
endfor

