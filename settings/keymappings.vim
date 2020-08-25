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

" Open files in a split
nnoremap <leader>sf <C-W>f
nnoremap <leader>vf <C-W>vgf

" Spell-check set to <leader>o, 'o' for 'orthography':
imap <leader>o <ESC>:setlocal spell! spelllang=en<CR>

" Y to behave as D and P
noremap Y y$

" Open NETRW with Q
noremap Q :Sexplore<CR>

" Use <S-Left> to resize windows
nnoremap <S-Down> :resize -2<CR>
nnoremap <S-Up> :resize +2<CR>
nnoremap <S-Left> :vertical resize -2<CR>
nnoremap <S-Right> :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap jj <Esc>
inoremap kj <Esc>
inoremap kk <Esc>

" Easy CAPS
inoremap <leader>up <ESC>viwUi
nnoremap <leader>up viwU
" Easy LOWER
inoremap <leader>dw <ESC>viwui
nnoremap <leader>dw viwu
" Easy TOGGLE
nnoremap ~~ ~lh

" Ctrl+K  in general mode will move to text buffer
nnoremap <C-K> :bnext<CR>
" Ctrl+J  will go back
nnoremap <C-J> :bprevious<CR>

" Use control-c instead of escape
inoremap <C-c> <Esc>

" Better tabbing on visual
vnoremap < <gv
vnoremap > >gv

" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>

