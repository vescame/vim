" backup-core.vim
" this file sets useful vim options about backup, undo and swap
" ===============================================

" undo directory for undo files
let s:myundodir=g:vim_dir . "/.undodir"
if has("win32")
  let s:myundodir=g:vim_dir . "/_undodir"
endif

call CreateDir(s:myundodir)

silent execute "set undodir=" . s:myundodir
set undofile

" backup directory
let s:mybackupdir=g:vim_dir . "/.backupdir"
if has("win32")
  let s:mybackupdir=g:vim_dir . "/_backupdir"
endif

call CreateDir(s:mybackupdir)

set backup
set writebackup
set backupcopy=no
silent execute "set backupdir=" . s:mybackupdir

" swap directory
let s:myswapdir=g:vim_dir . "/.swapdir"
if has("win32")
  let s:myswapdir=g:vim_dir . "/_swapdir"
endif

call CreateDir(s:myswapdir)

set swapfile
silent execute "set directory=" . s:myswapdir

