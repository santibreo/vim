" TODO Make win - lin compatible

" Plugins
call plug#begin("$VIMHOME/plugged")
    " Better vim
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
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
    Plug 'mattn/emmet-vim'
    " For Latex
    Plug 'lervag/vimtex'
    " For Markdown
    Plug 'tpope/vim-markdown'
    Plug 'masukomi/vim-markdown-folding'
    " For Rmarkdown (I just don't like them)
    "Plug 'vim-pandoc/vim-pandoc'
    "Plug 'vim-pandoc/vim-pandoc-syntax'
    "Plug 'vim-pandoc/vim-rmarkdown'
    " Fuzzy file search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Rip grep for faster searchs
    Plug 'jremmen/vim-ripgrep'
call plug#end()


"General settings
source $VIMHOME\settings\general.vim
source $VIMHOME\settings\keymappings.vim
 
" Python and Node hosts
let g:loaded_python_provider = 0
let g:python3_host_prog = expand("$USERPROFILE\\AppData\\Local\\Programs\\Python\\Python37\\python.exe")
let g:node_host_prog = expand("$USERPROFILE\\AppData\\Roaming\\npm\\node_modules\\neovim\\bin\\cli.js")


" configurations
" netree
let g:netrw_liststyle=3 " tree view type
let g:netrw_banner=1 " 0 to don't show a (not so) useless banner


" emmet
let g:user_emmet_leader_key=',' " Avoid conflicts with user
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'r', 'css']


" Coc
source $VIMHOME\settings\coc.vim
source $VIMHOME\settings\coc-vimtex.vim
source $VIMHOME\settings\coc-snippets.vim

" Snippets
"source $USERPROFILE\AppData\Local\nvim\settings\snippets.vim
"source $USERPROFILE\AppData\Local\nvim\settings\ultisnips.vim

" Fugitive
source $VIMHOME\settings\fugitive.vim

