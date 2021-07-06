" File paths recognition
setlocal isfname-={
setlocal isfname-=}

" Fold methods
setlocal foldmethod=expr
setlocal foldexpr=vimtex#fold#level(v:lnum)
setlocal foldtext=vimtex#fold#text()

" Config of documentation filetypes
source $NVIMHOME\after\ftplugin\gendocs.vim

" Set main file of the project
function! SetMainTexFile()
    if filereadable("00-master.tex")
        let b:vimtex_main="00-master.tex"
    elseif filereadable("../00-master.tex")
        silent! lcd ..
        let b:vimtex_main="00-master.tex"
    else
        let b:vimtex_main=substitute(bufname("%"), "\\", "/", "g")
    endif
endfunction

" Compilation command
if !exists("g:tex_command")
    let g:tex_command = "xelatex"
endif

function! TexRender()
    wall
    silent !clear
    let cmdOpts = ' -synctex=-1 -interaction=nonstopmode -output-directory="./metafiles" '
    echom "Rendering " . b:vimtex_main
    execute "!" . g:tex_command . cmdOpts . b:vimtex_main
endfunction

function! BibRender()
    write
    silent !clear
    let cmdOpts = ' --input-directory="metafiles" --output-directory="metafiles" '
    echom "Rendering " . b:vimtex_main . " bibliography"
    execute "!" . 'biber' . cmdOpts . fnamemodify(b:vimtex_main, ":r")
endfunction

function! AcrRender()
    write
    silent !clear
    let sOpt = '"metafiles/' . fnamemodify(b:vimtex_main, ":t:r") . '.ist" '
    let tOpt = '"metafiles/' . fnamemodify(b:vimtex_main, ":t:r") . '.alg" '
    let oOpt = '"metafiles/' . fnamemodify(b:vimtex_main, ":t:r") . '.acr" '
    let inFile = '"metafiles/' . fnamemodify(b:vimtex_main, ":t:r") . '.acn"'
    let cmdOpts = ' -s ' . sOpt . '-t ' . tOpt . '-o ' . oOpt . inFile
    echom "Rendering " . b:vimtex_main . " acronyms"
    execute "!" . 'makeindex' . cmdOpts
endfunction

function! TexCleaner()
    write
    let pdfFileName = fnamemodify(b:vimtex_main, ":t:r") . ".pdf"
    let createdFilePath = OSDependentPathJoiner(expand('%:p:h'), 'metafiles', pdfFileName)
    if has('win32')
        execute '!copy "' . createdFilePath . '" ' . '"' . pdfFileName . '"'
        execute '!rmdir /S /Q metafiles'
    endif
endfunction

function! PdfOpen()
    silent !clear
    let pdfFilePath = fnamemodify(b:vimtex_main, ":t:r") . ".pdf"
    if filereadable(pdfFilePath)
    else
        let pdfFilePath = 'metafiles/' . pdfFilePath
    endif
    echom "Opening " . pdfFilePath
    if has('win32')
        silent execute "! start SumatraPDF " . pdfFilePath
    endif
endfunction

" Specific mappings
nnoremap <buffer> <leader>ren :call TexRender()<cr>
nnoremap <buffer> <leader>bib :call BibRender()<cr>
nnoremap <buffer> <leader>acr :call AcrRender()<cr>
nnoremap <buffer> <leader>ope :call PdfOpen()<cr>
nnoremap <buffer> <leader>cln :call TexCleaner()<cr>
nnoremap <buffer> <leader>renope :call TexRender()<cr>:call PdfOpen()<cr>
nnoremap <buffer> <leader>rencln :call TexRender()<cr>:call TexCleaner()<cr>

" Autocommands
autocmd BufEnter *.tex call SetMainTexFile()
