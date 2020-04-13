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
map <leader>bd :bdelete<cr>:tabclose<cr>gT

" => PASTE MODE
map <leader>ep! :set paste!<cr>

" => ALE
nmap <silent> <leader>ap <Plug>(ale_previous_wrap)
nmap <silent> <leader>an <Plug>(ale_next_wrap)

