if has('win32')
    " Make it work in Windows
    let g:repl_program = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	}
else
    "if len($VIRTUAL_ENV) > 1
    "    let g:repl_python_pre_launch_command = 'source ' . $VIRTUAL_ENV . '/bin/activate'
    "endif
    let g:repl_filetype_commands = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	'default': 'zsh'
        \	}
endif

if has('nvim')
    nmap <leader>rr ;ReplToggle<CR>
    nmap <leader>rrc ;ReplClose<CR>
    nmap <leader>rrw <Plug>ReplSendLine
    vmap <leader>rrw <Plug>ReplSendVisual
else
    nmap <leader>rr ;REPLToggle<CR>
    nmap <leader>rrc ;REPLClose<CR>
    g:sendtorepl_invoke_key = "<leader>w"
endif
