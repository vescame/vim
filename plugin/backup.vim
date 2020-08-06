" backup.vim
" backup configuration for windows and linux

" undo directory for undo files
let s:myundodir=g:vim_dir . "/.undodir"
if has("win32")
  let s:myundodir=g:vim_dir . "/_undodir"
endif

call core#createDir(s:myundodir)

silent execute "set undodir=" . s:myundodir
set undofile

" backup directory
let s:mybackupdir=g:vim_dir . "/.backupdir"
if has("win32")
  let s:mybackupdir=g:vim_dir . "/_backupdir"
endif

call core#createDir(s:mybackupdir)

set backup
set writebackup
set backupcopy=no
silent execute "set backupdir=" . s:mybackupdir

" swap directory
let s:myswapdir=g:vim_dir . "/.swapdir"
if has("win32")
  let s:myswapdir=g:vim_dir . "/_swapdir"
endif

call core#createDir(s:myswapdir)

set swapfile
silent execute "set directory=" . s:myswapdir

