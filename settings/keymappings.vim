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
nnoremap <leader>hf <C-W>f
nnoremap <leader>vf <C-W>vgf

" Folding with 
"nnoremap <space> za 

" Spell-check set to <leader>o, 'o' for 'orthography':
imap <leader>o <ESC>:setlocal spell! spelllang=en<CR>

" map S to replace current word with pasteboard
nnoremap S diw"0P

" Y to behave as D and P
noremap Y y$

" Open NETRW with Q
noremap Q :Sexplore<CR>

" Move selected lines
"xnoremap J :move '>+1<CR>gv-gv 
"xnoremap K :move '<-2<CR>gv-gv

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
inoremap <C-s-up> <ESC>viwUi
nnoremap <C-s-up> viwU
" Easy LOWER
inoremap <c-s-down> <ESC>viwui
nnoremap <c-s-down> viwu
" Easy TOGGLE
nnoremap ~~ ~lh

" Ctrl+TAB in general mode will move to text buffer
nnoremap <C-S-right> :bnext<CR>
" Ctrl+SHIFT+TAB will go back
nnoremap <C-S-left> :bprevious<CR>

" Use control-c instead of escape
inoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Consoles
nnoremap <C-p> :sp<CR>:term ipython<CR>
nnoremap <C-ñ> :sp<CR>:term R<CR>

" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>
