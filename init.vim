" Plugins
call plug#begin('~/AppData/Local/nvim/plugged')
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
    " For Rmarkdown
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-rmarkdown'
    " Fuzzy file search
"    Plug 'vifm/vifm.vim'
    " Rip grep for faster searchs
    Plug 'jremmen/vim-ripgrep'
call plug#end()


"General settings
source $USERPROFILE\AppData\Local\nvim\settings\general.vim
source $USERPROFILE\AppData\Local\nvim\settings\keymappings.vim
 
" Python and Node hosts
let g:loaded_python_provider = 0
let g:python3_host_prog = expand("c:\\program files\\python\\python")
let g:node_host_prog = expand("$USERPROFILE\\appdata\\roaming\\npm\\node_modules\\neovim\\bin\\cli.js")


" configurations
" netree
let g:netrw_liststyle=3 " tree view type
let g:netrw_banner=1 " 0 to don't show a useless banner


" emmet
let g:user_emmet_leader_key=',' " same as user

" Coc
source $USERPROFILE\AppData\Local\nvim\settings\coc.vim
source $USERPROFILE\AppData\Local\nvim\settings\coc-vimtex.vim

" Snippets
"source $USERPROFILE\AppData\Local\nvim\settings\snippets.vim
source $USERPROFILE\AppData\Local\nvim\settings\coc-snippets.vim
"source $USERPROFILE\AppData\Local\nvim\settings\ultisnips.vim

" Fugitive
source $USERPROFILE\AppData\Local\nvim\settings\fugitive.vim

