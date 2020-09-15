" Spell check
setlocal spelllang=en
setlocal spell

" Text formatting
setlocal tw=80
setlocal fo+=t
setlocal fo+=a
setlocal fo+=w
setlocal fo+=c

" Cool folding 
setlocal foldmethod=syntax

" Rmarkdown compile
if !exists("g:r_command")
    let g:potion_command = "R"
endif

function! RmdRender()
    write
    silent !clear
    let cmdOpts = " -e \"library('rmarkdown'); rmarkdown::render('"
    execute "!" . g:potion_command . cmdOpts . bufname("%") . "');\""
endfunction

nnoremap <buffer> <leader>ren :call RmdRender()<cr>
