" mapping for core vim, no arrow keys plus some especially choosen insults from sudo
noremap <Up> :echo "You speak an infinite deal of nothing."<CR>
noremap <Down> :echo "The more you drive --- the dumber you get."<CR>
noremap <Left> :echo "He has fallen in the water"<CR>
noremap <Right> :echo "What, what, what, what, what, what, what, what, what, what?"<CR>

if has("win32")
  inoremap <up> <NOP>
  inoremap <down> <NOP>
  inoremap <left> <NOP>
  inoremap <right> <NOP>
endif

vnoremap <Up> :<C-u>echo "You can't get the wood, you know."<CR>
vnoremap <Down> :<C-u>echo "Listen, broccoli brains, I don't have time to listen to this trash."<CR>
vnoremap <Left> :<C-u>echo "Are you on drugs?"<CR>
vnoremap <Right> :<C-u>echo "Maybe if you used more than just two fingers..."<CR>
