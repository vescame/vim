" 0-core.vim
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

" remove highlighting
nnoremap <silent> <leader><cr> :noh<cr>

" => TABS
nnoremap <leader>tN :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>

" => BUFFERS
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bdelete<cr>:tabclose<cr>gT

" => PASTE MODE
nnoremap <leader>ep! :set paste!<cr>

" => MOVE LINES
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" => REMOVE TRAILING WHITE SPACES
vnoremap <leader>rtw :s/\s\+$//e<cr>
