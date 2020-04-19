" for directory creation
function! CreateDir(dirpath)
  if !isdirectory(a:dirpath)
    if has("unix")
      silent execute "!mkdir " . fnameescape(a:dirpath) . " > /dev/null 2>&1")
    else
      silent execute "!mkdir " . expand(fnameescape(a:dirpath))
    endif
  endif
endfunction

" undo directory for undo files
function! EnableUndodir()
  if has("unix")
    let l:myundodir=globpath(g:vim_dir, ".undodir")
  else
    let l:myundodir=globpath(g:vim_dir, "_undodir")
  endif

  call CreateDir(l:myundodir)

  silent execute "set undodir=" . l:myundodir
  set undofile
endfunction


" backup directory
function! EnableBackupdir()
  if has("unix")
    let l:mybackupdir=globpath(g:vim_dir, ".backupdir")
  else
    let l:mybackupdir=globpath(g:vim_dir, "_backupdir")
  endif

  call CreateDir(l:mybackupdir)

  set backup
  set writebackup
  set backupcopy=no
  silent execute "set backupdir=" . l:mybackupdir
endfunction

" swap directory
function! EnableSwapdir()
  if has("unix")
    let l:myswapdir=globpath(g:vim_dir, ".swapdir")
  else
    let l:myswapdir=globpath(g:vim_dir, "_swapdir")
  endif

  call CreateDir(l:myswapdir)

  silent execute "set directory=" . l:myswapdir
endfunction

