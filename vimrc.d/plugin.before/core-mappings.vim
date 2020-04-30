" core-mappings.vim
" core vim keybinding configuration
" ===============================================


" all mighty leader key mapped to space
let mapleader=" "

" remove highlighting
map <silent> <leader><cr> :noh<cr>

" => TABS
map <leader>tN :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" => BUFFERS
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>
map <leader>bd :bdelete<cr>:tabclose<cr>gT

" => PASTE MODE
map <leader>ep! :set paste!<cr>

" => CASE CHANGING
nmap <silent> <leader>lw bguw
nmap <silent> <leader>uw bgUw
nmap <silent> <leader>lc gul
nmap <silent> <leader>uc gUl
