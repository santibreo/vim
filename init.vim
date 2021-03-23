" TODO Make win - lin compatible

" Plugins
call plug#begin("$VIMHOME/plugged")
    " Better vim
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
    Plug 'sheerun/vim-polyglot'
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
    Plug 'tpope/vim-markdown', { 'for': 'markdown' }
    Plug 'masukomi/vim-markdown-folding', { 'for': 'markdown' }
    " For Rmarkdown (I just don't like them)
    "Plug 'vim-pandoc/vim-pandoc'
    "Plug 'vim-pandoc/vim-pandoc-syntax'
    "Plug 'vim-pandoc/vim-rmarkdown'
    " Fuzzy file search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Rip grep for faster searchs
    Plug 'jremmen/vim-ripgrep'
    " REPL
    Plug 'sillybun/vim-repl'
call plug#end()


" GENERAL SETTINGS
source $VIMHOME\settings\general.vim
source $VIMHOME\settings\keymappings.vim
" Python and Node hosts
let g:loaded_python_provider = 0
let g:python3_host_prog = expand("$LOCALAPPDATA\\Programs\\Python\\Python39\\python.exe")
let g:node_host_prog = expand("$LOCALAPPDATA\\Programs\\node-v14.16.0-win-x64\\node_modules\\neovim\\bin\\cli.js")


" CONFIGURATIONS
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


" AUTOCOMMANDS
" Set local CWD as file directory
autocmd BufEnter * silent! lcd %:p:h
" Remove trailing spaces at saving
autocmd BufWritePre * %s/\s\+$//e
" Set Rmarkdown filetype correctly
autocmd BufNewFile,BufRead *.Rmd,*.rmd,*.Rmarkdown,*.rmarkdown set filetype=rmd

