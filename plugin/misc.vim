" misc.vim
" miscelaneous configuration

" buffer switch without having to save (godly)
set hidden

" by default, when vertically splitting, use right for the new window
set splitbelow
set splitright

" do not redraw buffer while executing macros
set lazyredraw

" read content from disk when buffered file changed
set autoread

" hide cursor when writing
set mousehide

" reopen under the last cursor edit position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$")
      \   | exe "normal! g'\""
      \ | endif

" check when file in buffers have changed
autocmd FocusGained,BufEnter * checktime

" highlight every char after the 80th column
autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

" no comment when we create a new line starting by a commented line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" expose special characters
if $LANG =~ "utf-8"
  set list listchars=tab:»·,trail:·,nbsp:·
else
  set list listchars=tab:>-,trail:.,nbsp:%
endif

" use vertical diff by default
set diffopt+=vertical

if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

