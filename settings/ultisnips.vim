" Fly like a plane
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" Vertically split ultisnips edit window
let g:UltiSnipsEditSplit="vertical"

" Snippets directory
"let g:UltiSnipsSnippetsDir="~/AppData/Local/nvim\ultisnips"
let g:UltiSnipsSnippetDirectories = [
            \expand('C:\\Users\\n230104\\AppData\\Local\\nvim\\ultisnips'),
            \'UltiSnips',
            \'ultisnips'
            \]

" Open UltiSnips edit function
nmap <leader>ue :UltiSnipsEdit<cr>
