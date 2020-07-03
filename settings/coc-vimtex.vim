" coc-vimtex
"let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_latexmk_build_dir='metafiles'
let g:tex_flavor='latex'           " detect .tex files as latex not plaintex

" Compilers preferences
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}

" Compiler options
let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'options' : [ 
        \   '-file-line-error',
        \   '-synctex=-1',
        \   '-interaction=nonstopmode',
        \   '-output-directory="./metafiles"',
        \ ],
        \}

" Settings for SumatraPDF
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
