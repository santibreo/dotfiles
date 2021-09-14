source $VIMHOME\after\ftplugin\gendocs.vim

set foldmethod=manual
inoremap <leader>== <ESC>yypVr=yykP2jo
inoremap <buffer> <leader>= <ESC>yypVr=o<CR>
inoremap <buffer> <leader># <ESC>yypVr#o<CR>
inoremap <buffer> <leader>- <ESC>yypVr-o<CR>
inoremap <buffer> <leader>* <ESC>yypVr*o<CR>
