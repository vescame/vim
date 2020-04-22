" helpers.vim
" file containing useful functions for vim basic related,
" like set backup enabled, considering the Operating system
" =============================================== 

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

" undo directory for undo files
function! EnableUndodir()
  let l:myundodir=g:vim_dir . "/.undodir"
  if has("win32")
    let l:myundodir=g:vim_dir . "/_undodir"
  endif

  if !empty(l:myundodir)
    call CreateDir(l:myundodir)

    silent execute "set undodir=" . l:myundodir
    set undofile
  endif
endfunction

" backup directory
function! EnableBackupdir()
  let l:mybackupdir=g:vim_dir . "/.backupdir"
  if has("win32")
    let l:mybackupdir=g:vim_dir . "/_backupdir"
  endif

  if !empty(l:mybackupdir)
    call CreateDir(l:mybackupdir)

    set backup
    set writebackup
    set backupcopy=no
    silent execute "set backupdir=" . l:mybackupdir
  endif
endfunction

" swap directory
function! EnableSwapdir()
  let l:myswapdir=g:vim_dir . "/.swapdir"
  if has("win32")
    let l:myswapdir=g:vim_dir . "/_swapdir"
  endif

  if !empty(l:myswapdir)
    call CreateDir(l:myswapdir)

    set swapfile
    silent execute "set directory=" . l:myswapdir
  endif
endfunction

call EnableBackupdir()

call EnableSwapdir()

call EnableUndodir()

