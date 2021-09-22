" Plugins
if has('nvim')
    source $VIMHOME/settings/nvim-plugs.vim
else
    source $VIMHOME/settings/vim-plugs.vim
endif


" PATHS AND HOSTS
function OSDependentPathJoiner(...)
    let itemsAsStr = join(a:000, "', r'")
    let pyCmd = "print(join(r'" . itemsAsStr . "'), end='');"
    return  system('python -c "from os.path import join;' . pyCmd . '"')
endfunction
" Hosts
if has('win32')
    let g:node_host_prog = expand("$APPDATA\\npm\\node_modules\\neovim\\bin")
    let g:python3_host_prog = expand("$LOCALAPPDATA\\Programs\\Python\\Python39\\python.exe")
    let g:python_scripts_location = expand("$LOCALAPPDATA\\Programs\\Python\\Python39\\Scripts")
else
    let g:node_host_prog = "/usr/bin/node"
    let g:python3_host_prog = "/usr/bin/python"
    let g:python_scripts_location = expand("$HOME/.local/bin")
endif


" CONFIGURATIONS
" General settings
source $VIMHOME/settings/general.vim
source $VIMHOME/settings/keymappings.vim
" netree
let g:netrw_liststyle=3 " tree view type
let g:netrw_banner=1 " 0 to don't show a (not so) useless banner
let g:netrw_fastbrowse=0 " Close buffer after selecting file
" emmet
let g:user_emmet_leader_key='\' " Avoid conflicts with user
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" FZF
nnoremap <C-p> :FZF<CR>
" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'r', 'css']
" Coc
source $VIMHOME/settings/coc.vim
source $VIMHOME/settings/coc-vimtex.vim
source $VIMHOME/settings/coc-snippets.vim
source $VIMHOME/settings/coc-config.vim
" Snippets
"source $USERPROFILE\AppData\Local\nvim\settings\snippets.vim
"source $USERPROFILE\AppData\Local\nvim\settings\ultisnips.vim
" Fugitive
source $VIMHOME/settings/fugitive.vim
" REPL
source $VIMHOME/settings/repl.vim


" AUTOCOMMANDS
" Set local CWD as file directory
autocmd BufEnter * silent! lcd %:p:h
" Remove trailing spaces at saving
autocmd BufWritePre * %s/\s\+$//e
" Set Rmarkdown filetype correctly
autocmd BufNewFile,BufRead *.Rmd,*.rmd,*.Rmarkdown,*.rmarkdown set filetype=rmd
autocmd BufNewFile,BufRead *.sh,*.zsh,*.bash,*.shell set filetype=zsh
