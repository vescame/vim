" dos.vim
" powershell `filetype` configuration

const extension = expand('%:e')
if extension == 'ps1'
  set filetype=ps1
endif

setlocal ts=4 sts=4 sw=4 expandtab

