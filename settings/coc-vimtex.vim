" coc-vimtex
let g:vimtex_compiler_progname='nvr'
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
" let g:vimtex_view_general_options = '-reuse-instance'
" let g:vimtex_view_general_options
"     \ = ' -forward-search @tex @line'
"     \ . ' -inverse-search "nvim-qt --server ' . v:servername
"     \ . ' --remote-send \"^<C-\^>^<C-n^>'
"     \ . ':drop \%f^<CR^>:\%l^<CR^>:normal\! zzzv^<CR^>'
"     \ . ':execute ''drop '' . fnameescape(''\%f'')^<CR^>'
"     \ . ':\%l^<CR^>:normal\! zzzv^<CR^>'
"     \ . ':call remote_foreground('''.v:servername.''')^<CR^>^<CR^>\""'
