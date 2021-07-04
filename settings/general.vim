" Settings
" + BASICS
set nocompatible                    " Avoid VI backward compatibility
set encoding=utf-8
set fileencoding=utf-8              " The encoding written to file
set autoread                        " Alert if document is updated from outside
set autowriteall                    " Updates documents edited outside of nvim
syntax enable                       " Enable syntax highlighting
filetype plugin indent on           " Enable filetype Plugin & Indent
set hidden                          " Enable re-usable window (needed for Coc)
set showtabline=2                   " Always show tabs
set guitablabel=%t                  " Tab label is just the file name
set updatetime=300                  " Faster completion
set timeoutlen=500                  " By default timeoutlen is 1000 ms
set confirm                         " Ask when leaving unsaved files
set lazyredraw                      " Don't refresh that many times the whole screen
" + BEHAVIOUR
set nowrap                          " Got respect from Primagen and do not use line wrapping
set scrolloff=4                     " Keep 4 lines between the cursor and the edge of the screen
set backspace=indent,eol,start      " Allow backspacing over autoindent, line breaks and start of insert action
set clipboard=unnamed,unnamedplus   " Access to the system clipboard
set iskeyword+=-                    " treat dash separated words as a word text object
set relativenumber number           " Properly line numbering
set pumheight=20                    " Makes popup menu smaller
set cmdheight=2                     " Avoid many cases of having to 'press <Enter> to continue'
set splitbelow                      " Split below instead of above
set splitright                      " Vsplit right instead of left
set foldenable                      " Enable folding
set foldmethod=indent               "   - Based on indentation
set foldlevel=0                     "   - All folds closed up to 1 level
set undodir=$VIMHOME/undodir        " Where to save the undo files
set undofile                        " Enable undo after file is closed
" + DEACTIVATIONS
set noerrorbells                    " Errors should not lead to a color orchestra
set noshowmode                      " We don't need to see things like -- INSERT -- anymore
set nobackup                        " This is recommended by coc
set nowritebackup                   " This is recommended by coc
" + SEARCHING
set wildmenu                        " Better command-line completion
set showmatch                       " Highligh the matching pair for [], {} and ()
set hlsearch                        " Highlight searches
set ignorecase                      " Use case insensitive search
set incsearch                       " Do incremental search
set smartcase                       " Except when using capital letters
" + SPACES vs TABS
set tabstop=4                       " Tab size = 4
set shiftwidth=4                    " Tab shift to work with << and >> commands
set smartindent
set expandtab
"set softtabstop=4                   " Tab key stroke = 4
set autoindent                      " Keep previous line indentation if there isn't a filetype-specific one
set noruler                         " Setting up rulers & spacing tabs
" + POSITION
set cursorline                      " Highlight current line
set colorcolumn=80                  " Highlight line limit
" + STATUSLINE
" Function to get the current mode
function! ModeStatusline()
    let c_mode = mode()
    if c_mode ==? "n"
        let statusstring = '%#DiffDelete#'
        let statusstring .= ' NORMAL '
    elseif c_mode ==? "v"
        let statusstring = '%#DiffText#'
        let statusstring .= ' VISUAL '
    elseif c_mode ==? "r"
        let statusstring = '%#DiffAdd#'
        let statusstring .= ' REPLACE '
    elseif c_mode ==? "c"
        let statusstring = '%#DiffChange#'
        let statusstring .= ' COMMAND '
    else
        let statusstring = '%#DiffAdd#'
        let statusstring .= ' INSERT '

    endif
    " Add static content
    let statusstring.="%#PmenuSel#"
    let statusstring.="%{FugitiveStatusline()}"
    let statusstring.="%#PmenuSbar#"
    let statusstring.="%m"
    let statusstring.="\ %r"
    let statusstring.="\ %y"
    let statusstring.="%#CursorColumn#"
    let statusstring.="\ %-015.50F"
    let statusstring.="%="                  " Right side settings
    let statusstring.="%#DiffChange#"
    let statusstring.="\ %c:%l/%L\ "
    let statusstring.="\ %p%%\ "
    let statusstring.="\ [%n]"
    return statusstring
endfunction

set statusline=%!ModeStatusline()
au! InsertEnter, InsertLeave, CmdlineEnter, CmdlineLeave * redraws

" Auto source when writing to init.vim
au! BufWritePost $VIMRC source %


" You can't stop me
cmap w!! w !sudo tee %


" Color settings
colorscheme gruvbox
set background=dark
hi ColorColumn guibg=#361e1c ctermbg=246


" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


autocmd BufRead, BufNewFile *.tex,*.cls set filetype=tex
