" guiopts.vim
" gvim configurations for guifont decrease increase

if (has("gui_gtk2") || has("gui_gtk3")) && has("gui_running")
  let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
  let s:minfontsize = 6
  let s:maxfontsize = 16

  function guifont#adjustFontSize(amount)
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount

    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  endfunction

  function guifont#increase()
    call guifont#adjustFontSize(1)
  endfunction

  function guifont#decrease()
    call guifont#adjustFontSize(-1)
  endfunction

  command FontDecrease call guifont#decrease()
  nnoremap <leader>- :FontDecrease<CR>

  command FontIncrease call guifont#increase()
  nnoremap <leader>+ :FontIncrease<CR>
endif

