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

" Use alt + hjkl to resize windows
nnoremap <leader>j    :resize -2<CR>
nnoremap <leader>k    :resize +2<CR>
nnoremap <leader>h    :vertical resize -2<CR>
nnoremap <leader>l    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <C-u> <ESC>viwUi
nnoremap <C-u> viwU<Esc>

" Ctrl+TAB in general mode will move to text buffer
nnoremap <C-TAB> :bnext<CR>
" Ctrl+SHIFT+TAB will go back
nnoremap <C-S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Consoles
nnoremap <C-p> :sp<CR>:term ipython<CR>
nnoremap <C-ñ> :sp<CR>:term R<CR>

" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>

" Code execution
inoremap <C-CR> <ESC>Vy<C-w>jpA<CR><C-\><C-n><C-w>k
vnoremap <C-CR> <ESC>y<C-w>jpA<CR><C-\><C-n><C-w>k
