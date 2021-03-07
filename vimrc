" SETUP
" Netree
let g:netrw_liststyle=3 " tree view type
let g:netrw_banner=1 " 0 to not show a useless banner

" GUI (clean it)
autocmd GUIENTER * :set guifont=Monospace\ 11
set guioptions-=m  "Hide menu bar
set guioptions-=T  "Hide toolbar
set guioptions-=r  "Hide scrollbar
set guioptions-=e  "Hide tabline (uses vim's, according to colorscheme)
" Python
let g:python3_host_prog = system('python -e "import os;print(os.sys.executable)"')
" Node
if has('win32')
    let g:node_host_prog = expand("$USERPROFILE\\AppData\\Roaming\\npm\\node_modules\\neovim\\bin\\cli.js")
else
    let g:node_host_prog = expand("/usr/bin/node")
endif

" PLUGINS
call plug#begin('$VIMHOME/plugged')
" Better vim
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
    Plug 'sheerun/vim-polyglot'
" Git
    Plug 'tpope/vim-fugitive'
" Colors
    Plug 'morhetz/gruvbox'
    Plug 'ap/vim-css-color'
" Autocomplete engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Snippets
    Plug 'honza/vim-snippets'
    "Plug 'SirVer/ultisnips'
" For Python
    " Plug 'tell-k/vim-autopep8'
" For HTML
    Plug 'mattn/emmet-vim'
" For Latex
    Plug 'lervag/vimtex'
" For Markdown
    Plug 'tpope/vim-markdown'
    Plug 'masukomi/vim-markdown-folding'
" For Rmarkdown
    "Plug 'vim-pandoc/vim-pandoc'
    "Plug 'vim-pandoc/vim-pandoc-syntax'
    "Plug 'vim-pandoc/vim-rmarkdown'
" Fuzzy file search
"    Plug 'vifm/vifm.vim'
" Rip grep for faster searchs
    Plug 'jremmen/vim-ripgrep'
" Repl like gods
    Plug 'sillybun/vim-repl'
call plug#end()


" SETTINGS
" General
source $VIMHOME/settings/general.vim
source $VIMHOME/settings/keymappings.vim
" Netree
let g:netrw_liststyle=3 " tree view type
let g:netrw_banner=1 " 0 to not show a useless banner
" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html, css EmmetInstall
let g:user_emmet_leader_key='¡' " Avoid conflicts with user
" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'r']
let g:loaded_python_provider = 0
" Coc
source $VIMHOME/settings/coc.vim
source $VIMHOME/settings/coc-vimtex.vim
" Snippets
source $VIMHOME/settings/snippets.vim
" Fugitive
source $VIMHOME/settings/fugitive.vim
" REPL
source $VIMHOME/settings/repl.vim


" AUTOCOMMANDS
" Set local CWD to file dir
autocmd BufEnter * silent! lcd %:p:h
" Remove trailing spaces
autocmd BufWritePre * %s/\s\+$//e
