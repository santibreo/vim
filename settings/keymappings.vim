" Key Remapping

" set leader key
let mapleader = ","

" Commands
nnoremap : ;
nnoremap ; :

" Save faster
nmap <C-s> ;wa<CR>
imap <C-s> <ESC>;wa<CR>a

" Goyo
nmap <C-g> ;Goyo<CR>

" Empty lines
nmap <CR> ojkk
nmap <S-CR> Ojkj

" Faster splits movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Indentation guide
nnoremap <leader>i :set cuc<CR>
nnoremap <leader>ii :set nocuc<CR>

" Use tabs instead of buffers
nnoremap <leader>t  :tabnew<space>
nnoremap <leader>sf <C-W>f
nnoremap <leader>vf <C-W>vgf

" Spell-check set to <leader>o, 'o' for 'orthography':
imap <leader>ysp <ESC>;setlocal spell! spelllang=en<CR>
imap <leader>nsp <ESC>;setlocal nospell<CR>

" Y, v and V to behave as D and P
noremap Y yg_
noremap vv V
noremap V vg_
vnoremap p "_dp
vnoremap P "_dP

" Open NETRW with Q
noremap Q :Sexplore<CR>

" Arrow to resize windows <Nop> to ban them
noremap <Up> :resize -2<CR>
noremap <Down> :resize +2<CR>
noremap <Left> :vertical resize -2<CR>
noremap <Right> :vertical resize +2<CR>
inoremap <Up> :resize -2<CR>
inoremap <Down> :resize +2<CR>
inoremap <Left> :vertical resize -2<CR>
inoremap <Right> :vertical resize +2<CR>

" Back to normality
inoremap jk <Esc>
inoremap kj <Esc>

" Easy TOGGLE
nnoremap ~~ ~lh

" ,+n next buffer instead next line
nnoremap <leader>n  :bn<CR>
" ,+p  previous buffer instead previous line
nnoremap <leader>p  :bp<cr>
" ,+d  previous buffer instead previous line
nnoremap <leader>d  :bd<cr>

" Better tabbing on visual
vnoremap > >gv
vnoremap < <gv

" Easy way to insert DateTime Flag
inoremap <leader>dtf <ESC>:put=strftime('%d-%m-%Y %H:%M:%S')<CR>

" Can get out of terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap <expr> <leader><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tmap <C-j> <Esc><C-j>
tmap <C-k> <Esc><C-k>
tmap <C-h> <Esc><C-h>
tmap <C-l> <Esc><C-l>

