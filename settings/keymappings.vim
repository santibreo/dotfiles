" Key Remapping
" Empty lines
nmap <CR> o<ESC>k
nmap <leader><CR> O<ESC>j

" Goyo
map <C-g> :Goyo<CR>
imap <C-g> <ESC>:Goyo<CR>i

" Faster splits movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open files in a split
nnoremap <leader>hf <C-W>f
nnoremap <leader>vf <C-W>vgf


" Spell-check set to <leader>o, 'o' for 'orthography':
nnoremap <leader>yesp <ESC>:setlocal spell! spelllang=en<CR>
nnoremap <leader>nosp :setlocal nospell<CR>

" Y to behave as D and P
noremap Y y$
noremap vv V
noremap V v$
" Visual paste do not burn what I am copying
vnoremap p "_dP

" Open NETRW with Q
noremap Q :Sexplore<CR>

" Use <S-Left> to resize windows
nnoremap <S-j> :resize -2<CR>
nnoremap <S-k> :resize +2<CR>
nnoremap <S-l> :vertical resize -2<CR>
nnoremap <S-h> :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jj <Esc>
inoremap kk <Esc>

" Easy TOGGLE
nnoremap ~~ ~lh

" Ctrl+n in general mode will move to text buffer
nnoremap <C-n> :bnext<CR>
" Ctrl+s will go back
nnoremap <C-p> :bprevious<CR>

" Can get out of terminal mode
noremap <leader>repl :REPLToggle<CR>
tnoremap <leader><Esc> <C-\><C-n>
"tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <C-w>j
tmap <C-k> <C-w>k
tmap <C-h> <C-w>h
tmap <C-l> <C-w>l

