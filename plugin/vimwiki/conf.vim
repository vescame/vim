" plugin/vimwiki.vim
" vimwiki configuration file

" FIX for .md files, they should have `ft=markdown`
let g:vimwiki_list = [{'path': '$HOME/workspace', 'syntax': 'default', 'ext': '.wiki'}]
let g:vimwiki_global_ext = 0

" execute Vimwiki2HTML whenever the wiki file is saved
autocmd BufWrite *.wiki call conf#genVimwikiHtml()

function! conf#genVimwikiHtml()
  execute(":Vimwiki2HTML")
endfunction

