" ale.vim
" Ale is a general linter
" ===============================================

nmap <silent> <leader>ap <Plug>(ale_previous_wrap)
nmap <silent> <leader>an <Plug>(ale_next_wrap)

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'NERR' : printf(
          \   '%dW %dE',
          \   all_non_errors,
          \   all_errors
          \)
endfunction

