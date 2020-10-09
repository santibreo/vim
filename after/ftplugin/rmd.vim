source $VIMHOME\after\ftplugin\gendocs.vim

" Cool folding 
setlocal foldmethod=syntax

" Rmarkdown compile
if !exists("g:r_command")
    let g:r_command = "R"
endif

function! RmdRender()
    write
    silent !clear
    let cmdOpts = " -e \"library('rmarkdown'); rmarkdown::render('"
    let currFilePath = substitute(bufname("%"), "\\", "/", "g")
    echom "Rendering " . currFilePath
    silent execute "!" . g:r_command . cmdOpts . currFilePath . "');\""
endfunction

function! HtmlOpen()
    silent !clear
    let htmlFilePath = expand("%:p:r") . ".html"
    echom "Opening " . htmlFilePath
    silent execute "! explorer " . htmlFilePath
endfunction

nnoremap <buffer> <leader>ren :call RmdRender()<cr>
nnoremap <buffer> <leader>ope :call HtmlOpen()<cr>
nnoremap <buffer> <leader>ren! :call RmdRender()<cr> :call HtmlOpen()<cr>


