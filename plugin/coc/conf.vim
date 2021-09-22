" coc.nvim
" conquer of completion plugin config

" from coc.nvim example on github
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>cdn <Plug>(coc-diagnostic-next)
nmap <silent> <leader>cdp <Plug>(coc-diagnostic-prev)

" Coc implementation of the "GoTo" code navigation
nmap <silent> <leader>cgd <Plug>(coc-definition)
nmap <silent> <leader>cgy <Plug>(coc-type-definition)
nmap <silent> <leader>cgi <Plug>(coc-implementation)
nmap <silent> <leader>cgr <Plug>(coc-references)

" symbol renaming (language server must support it)
nmap <leader>rn <Plug>(coc-rename)

" formatting selected code
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)

