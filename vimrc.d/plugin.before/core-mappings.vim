" core-mappings.vim
" core vim keybinding configuration
" ===============================================

" all mighty leader key mapped to space
let mapleader=" "

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


