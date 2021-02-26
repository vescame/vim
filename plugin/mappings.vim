" mappings.vim
" all wanted keymappings

" remove highlighting
nnoremap <silent> <leader><cr> :noh<cr>

" better movement
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" brackets completion
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" yank to $
nnoremap Y y$

" visit ALE errors
nnoremap <leader>an :ALENext<cr>
nnoremap <leader>ap :ALEPrevious<cr>
nnoremap <leader>ad :ALEDetail<cr>

" tabs navigation
nnoremap <leader>tN :tabnew<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>

" buffer navigation
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bdelete<cr>:tabclose<cr>gT

" enable paste (very useful)
nnoremap <leader>ep! :set paste!<cr>

" move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" remove trailing spaces
vnoremap <leader>rtw :s/\s\+$//e<cr>
nnoremap <leader>rtw :s/\s\+$//e<cr>

" no arrows for move around
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" tabulation does not exit visual mode
vnoremap < <gv
vnoremap > >gv

