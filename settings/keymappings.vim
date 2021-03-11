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

" Easier splits navigation
nnoremap <C-h> <C-W><C-h>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>

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
" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>
