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

function! core#generatePacksHelptags()
  let s:plugins = core#listPluginsDirectories()

  for spec in s:plugins
    let docd = expand(join([spec, 'doc'], ''))
    if isdirectory(docd)
      let tagsfile = expand(join([docd, 'tags'], '/'))
      if !filereadable(tagsfile)
        silent! execute 'helptags' docd
      endif
    endif
  endfor
endfunction

function! core#listPluginsDirectories()
    let pack_dir = expand('~/vimfiles/pack')
    let pack_subdirectories = []

    if !isdirectory(pack_dir)
        echom "Pack directory does not exist: " . pack_dir
        return
    endif

    let pack_subdirectories = glob(pack_dir . '/**/', 1, 1)

    let filtered_subdirectories = filter(pack_subdirectories, 'isdirectory(v:val."doc")')

    return filtered_subdirectories
endfunction

