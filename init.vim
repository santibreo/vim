" Plugins
call plug#begin("$NVIMHOME/plugged")
    " Better vim
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/goyo.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'rhysd/vim-grammarous'
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
    Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] }
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
    Plug 'pappasam/nvim-repl'
    "Plug 'sillybun/vim-repl'       Not compatible with neovim
call plug#end()


" PATHS AND HOSTS
function OSDependentPathJoiner(...)
    let itemsAsStr = join(a:000, "', r'")
    let pyCmd = "print(join(r'" . itemsAsStr . "'), end='');"
    return  system('python -c "from os.path import join;' . pyCmd . '"')
endfunction
" Hosts
if has('win32')
    let g:node_host_prog = expand("$LOCALAPPDATA\\Programs\\node-v14.16.0-win-x64\\node_modules\\neovim\\bin\\cli.js")
    let g:python3_host_prog = expand("$LOCALAPPDATA\\Programs\\Python\\Python39\\python.exe")
    let g:python_scripts_location = expand("$LOCALAPPDATA\\Programs\\Python\\Python39\\Scripts")
else
    let g:node_host_prog = "/usr/bin/node"
    let g:python3_host_prog = "/usr/bin/python"
    let g:python_scripts_location = expand("$HOME/.local/bin")
endif


" CONFIGURATIONS
" General settings
source $NVIMHOME/settings/general.vim
source $NVIMHOME/settings/keymappings.vim
" netree
let g:netrw_liststyle=3 " tree view type
let g:netrw_banner=1 " 0 to don't show a (not so) useless banner
" emmet
let g:user_emmet_leader_key='\' " Avoid conflicts with user
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" FZF
nnoremap <C-p> :FZF<CR>
" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'r', 'css']
" Coc
source $NVIMHOME/settings/coc.vim
source $NVIMHOME/settings/coc-vimtex.vim
source $NVIMHOME/settings/coc-snippets.vim
source $NVIMHOME/settings/coc-config.vim
" Snippets
"source $USERPROFILE\AppData\Local\nvim\settings\snippets.vim
"source $USERPROFILE\AppData\Local\nvim\settings\ultisnips.vim
" Fugitive
source $NVIMHOME/settings/fugitive.vim
" REPL
source $NVIMHOME/settings/repl.vim


" AUTOCOMMANDS
" Set local CWD as file directory
autocmd BufEnter * silent! lcd %:p:h
" Remove trailing spaces at saving
autocmd BufWritePre * %s/\s\+$//e
" Set Rmarkdown filetype correctly
autocmd BufNewFile,BufRead *.Rmd,*.rmd,*.Rmarkdown,*.rmarkdown set filetype=rmd
