" markdown-preview/conf.vim
" plugin that allow us to preview markdown files and live preview during edit

" do not auto refresh buffer
let g:mkdp_refresh_slow = 0

autocmd FileType markdown nmap <silent> <leader>mdpt <Plug>MarkdownPreviewToggle

