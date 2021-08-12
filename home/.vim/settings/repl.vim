let g:repl_program = {
    \   'python': 'ipython',
    \   'default': 'zsh',
    \   'r': 'R',
    \   'lua': 'lua',
    \   'vim': 'vim -e',
    \   }

" Make it work in Windows
if has('win32')
    let g:repl_program['default'] = 'cmd'
endif

" Nvim uses a different and much more limited plugin
if has('nvim')
    " Maps
    nmap <leader>rr ;ReplToggle<CR>
    nmap <leader>rrc ;ReplClose<CR>
    nmap <leader>rrw <Plug>ReplSendLine
    vmap <leader>rrw <Plug>ReplSendVisual
else
    " General config
    let g:repl_position = 3
    let g:repl_cursor_down = 1
    let g:repl_output_copy_to_register = "t"
    " Python config
    let g:repl_predefine_python = {
        \   'numpy': 'import numpy as np',
        \   'matplotlib': 'from matplotlib import pyplot as plt'
        \   }
    let g:repl_python_automerge = 1
    let g:repl_ipython_version = '7'
    autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
    autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
    autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>
    " Maps
    nmap <leader>rr ;REPLToggle<CR>
    nmap <leader>rrc ;REPLClose<CR>
endif
