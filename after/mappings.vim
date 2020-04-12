" => MAPPINGS
" ===========
" remove highlighting
map <silent> <leader><cr> :noh<cr>

" => TABS
map <leader>tN :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>

" => BUFFERS
map <leader>bn :bnext<cr>
map <leader>bp :bprevious<cr>
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" => PASTE MODE
map <leader>ep! :set paste!<cr>
