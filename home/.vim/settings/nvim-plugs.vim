" Plugins
call plug#begin("$VIMHOME/plugged")
    " Better vim
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
    "Plug 'sheerun/vim-polyglot'
    Plug 'rhysd/vim-grammarous'
    " Git
    Plug 'tpope/vim-fugitive'
    " Colors
    Plug 'morhetz/gruvbox'
    Plug 'ap/vim-css-color'
    " Autocomplete engine
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Snippets
    Plug 'honza/vim-snippets'
    " Plug 'SirVer/ultisnips'
    " For Python
    " Plug 'tell-k/vim-autopep8'
    " For HTML
    Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] }
    " For Latex
    Plug 'lervag/vimtex'
    " For Markdown
    Plug 'tpope/vim-markdown', { 'for': 'markdown' }
    Plug 'masukomi/vim-markdown-folding', { 'for': 'markdown' }
    " For Rmarkdown (I just don't like them)
    "Plug 'vim-pandoc/vim-pandoc'
    "Plug 'vim-pandoc/vim-pandoc-syntax'
    "Plug 'vim-pandoc/vim-rmarkdown'
    " Fuzzy file search
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Rip grep for faster searchs
    " Plug 'jremmen/vim-ripgrep'
    " REPL
    Plug 'pappasam/nvim-repl'
call plug#end()

