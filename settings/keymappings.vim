" Key Remapping
" Empty lines
nmap <CR> o<ESC>k
nmap <leader><CR> Ojkj

" Goyo
map <C-g> :Goyo<CR>
imap <C-g> <ESC>:Goyo<CR>i

" Open files in a split
nnoremap gf         <C-W>gf
nnoremap <leader>t  :tabnew<space>
nnoremap <leader>hf <C-W>f
nnoremap <leader>vf <C-W>vgf

" Spell-check set to <leader>o, 'o' for 'orthography':
nnoremap <leader>yesp <ESC>:setlocal spell! spelllang=en<CR>
nnoremap <leader>nosp :setlocal nospell<CR>

" Y to behave as D and P
noremap Y yg_
noremap vv V
noremap V vg_
" Visual paste do not burn what I am copying
vnoremap p "_dp
vnoremap P "_dP

" Open NETRW with Q
noremap Q :Sexplore<CR>

" Use <S-Left> to resize windows
nnoremap <S-j> :resize -2<CR>
nnoremap <S-k> :resize +2<CR>
nnoremap <S-l> :vertical resize -2<CR>
nnoremap <S-h> :vertical resize +2<CR>

" I hate escape me than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy TOGGLE
nnoremap ~~ ~lh

" Ctrl+n in general mode will move to text buffer
nnoremap <C-n> :tabn<CR>
" Ctrl+s will go back
nnoremap <C-p> :tabp<CR>

" Can get out of terminal mode
noremap <leader>repl :REPLToggle<CR>
tnoremap <leader><Esc> <C-\><C-n>
"tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
