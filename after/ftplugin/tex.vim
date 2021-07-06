" File paths recognition
setlocal isfname-={
setlocal isfname-=}

" Fold methods
setlocal foldmethod=expr
setlocal foldexpr=vimtex#fold#level(v:lnum)
setlocal foldtext=vimtex#fold#text()

" Config of documentation filetypes
source $NVIMHOME\after\ftplugin\gendocs.vim

if !exists("g:tex_command")
    let g:tex_command = "xelatex"
endif

function! TexRender()
    write
    silent !clear
    let cmdOpts = ' -synctex=-1 -interaction=nonstopmode -output-directory="./metafiles" '
    let currFilePath = substitute(bufname("%"), "\\", "/", "g")
    echom "Rendering " . currFilePath
    execute "!" . g:tex_command . cmdOpts . currFilePath
endfunction

function! TexCleaner()
    write
    let createdFilePath = expand('%:p:h') . '\metafiles\' . expand('%:t:r') . ".pdf"
    let desiredFilePath = '.\' . expand('%:t:r') . ".pdf"
    silent execute "! copy \"" . createdFilePath . '" ' . '"' . desiredFilePath . '"'
    silent execute "! rmdir /S /Q metafiles"
endfunction

function! PdfOpen()
    silent !clear
    let pdfFilePath = expand('%:t:r') . ".pdf"
    echom "Opening " . pdfFilePath
    silent execute "! start SumatraPDF " . pdfFilePath
endfunction

nnoremap <buffer> <leader>ren :call TexRender()<cr>
nnoremap <buffer> <leader>ope :call PdfOpen()<cr>
nnoremap <buffer> <leader>cln :call TexCleaner()<cr>
nnoremap <buffer> <leader>ren! :call TexRender()<cr> :call TexCleaner()<cr> :call PdfOpen()<cr>
