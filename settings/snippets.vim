" COC-SNIPPETS
"=============
" To make <tab> work as VSCode
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? coc#_select_confirm() :
"      \ coc#expandableOrJumpable() ? \<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"      \ <SID>check_back_space() ? \<TAB>" :
"      \ coc#refresh()
"
"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"let g:coc_snippet_next = '<tab>'

" Use <C-space> for trigger snippet expand.
imap <c-space> <Plug>(coc-snippets-expand)
" Use <C-j> for both jump
imap <c-j> <Plug>(coc-snippets-jump)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <c-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Open UltiSnips edit function
nmap <leader>es :CocCommand snippets.editSnippets<cr>

"-------------------------------------------------------------------------------

" ULTISNIPS
"==========
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'


" Vertically split ultisnips edit window
let g:UltiSnipsEditSplit="vertical"


" Snippets directory
"let g:UltiSnipsSnippetsDir="~/AppData/Local/nvim\ultisnips"
let g:UltiSnipsSnippetDirectories = [
            \expand('$NVIMHOME\ultisnips'),
            \'UltiSnips',
            \'ultisnips'
            \]

" Open UltiSnips edit function
"nmap <leader>ue :UltiSnipsEdit<cr>

