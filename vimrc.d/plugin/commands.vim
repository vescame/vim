" => COMMANDS
" ===========
" save as sudo when youre didnt started file as sudo
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
