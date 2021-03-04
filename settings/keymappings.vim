" Key Remapping
" Empty lines
nmap <CR> o<ESC>k

" Goyo
map <C-g> :Goyo<CR>

" Faster splits movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Indentation guide
nnoremap <leader>i :set cuc<CR>
nnoremap <leader>ii :set nocuc<CR>

" Open files in a split
nnoremap <leader>sf <C-W>f
nnoremap <leader>vf <C-W>vgf

" Spell-check set to <leader>o, 'o' for 'orthography':
imap <leader>yesp <ESC>:setlocal spell! spelllang=en<CR>
imap <leader>nosp <ESC>:setlocal nospell<CR>

" Y, v and V to behave as D and P
noremap Y y$
noremap vv V
noremap V v$
vnoremap p "_dP

" Open NETRW with Q
noremap Q :Sexplore<CR>

" Use <S-Left> to resize windows
nnoremap <S-Down> :resize -2<CR>
nnoremap <S-Up> :resize +2<CR>
nnoremap <S-Left> :vertical resize -2<CR>
nnoremap <S-Right> :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>
inoremap <Esc> <nop>
" Use control-c instead of escape
inoremap <C-c> <Esc>

" Easy TOGGLE
nnoremap ~~ ~lh

" Ctrl+N next buffer instead next line
nnoremap <C-N> :bnext<CR>
" Ctrl+P  previous buffer instead previous line
nnoremap <C-P> :bprevious<CR>

" Better tabbing on visual
vnoremap < <gv
vnoremap > >gv

" Easy way to inser DateTime Flag
inoremap <leader>dtf <ESC>:put=strftime('%d-%m-%Y %H:%M:%S')<CR>

" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>

