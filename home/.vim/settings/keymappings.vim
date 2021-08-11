" Key Remapping
" Empty lines
nmap <CR> o<ESC>k
nmap <leader><CR> Oj<ESC>

" Goyo
map <C-g> :Goyo<CR>
imap <C-g> <ESC>:Goyo<CR>i

" Open files in a split
nnoremap <leader>t  :tabnew<space>
nnoremap <leader>tf <C-W>gf
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
nnoremap Q :Sexplore<CR>

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

" ,+n in general mode will move to text buffer
nnoremap <leader>n     :bn<CR>
" ,+p will go back
nnoremap <leader>p     :bp<CR>
" ,+d will close
nnoremap <leader>d     :bd<CR>

" Allow get out of terminal mode
nnoremap <leader>repl :REPLToggle<CR>
" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>
