" mappings.vim
" all wanted keymappings

" remove highlighting
nnoremap <silent> <leader><cr> :nohlsearch<cr>

" better movement
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" yank to $
nnoremap Y y$

" visit ALE errors
nnoremap <silent> <leader>an :ALENext<cr>
nnoremap <silent> <leader>ap :ALEPrevious<cr>
nnoremap <silent> <leader>ad :ALEDetail<cr>

" tabs navigation
nnoremap <silent> <leader>tN :tabnew<cr>
nnoremap <silent> <leader>to :tabonly<cr>
nnoremap <silent> <leader>tc :tabclose<cr>
nnoremap <silent> <leader>tm :tabmove<cr>

" buffer navigation
nnoremap <silent> <leader>bn :bnext<cr>
nnoremap <silent> <leader>bp :bprevious<cr>
nnoremap <silent> <leader>bd :bdelete<cr>:tabclose<cr>gT

" enable paste (very useful)
nnoremap <silent> <leader>ep! :set paste!<cr>

" netrw/nerdtree/show directory structure
nnoremap <silent> <leader>nl :Lexplore<cr>
nnoremap <silent> <leader>ng :Rexplore<cr>

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

