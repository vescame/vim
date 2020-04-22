" loads files to be loaded before ./plugin directory
function! AppendToRuntimePath(path)
	if isdirectory(a:path)
		silent execute "set runtimepath+=" . a:path
	endif
endfunction

" add vimrc.d to run time path
let g:vimrc_dir=globpath(g:vim_dir, "vimrc.d")

" plugins loaded before
let s:plugin_before_dir=globpath(g:vimrc_dir, "plugin.before")

call AppendToRuntimePath(g:vimrc_dir)

call AppendToRuntimePath(s:plugin_before_dir)

" early run time essential files
for b:file in split(globpath(s:plugin_before_dir, "*"))
  silent execute "runtime" fnamemodify(b:file, ":t")
endfor

