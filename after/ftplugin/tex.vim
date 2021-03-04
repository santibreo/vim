" File paths recognition
setlocal isfname-={
setlocal isfname-=}

" Fold methods
setlocal foldmethod=expr
setlocal foldexpr=vimtex#fold#level(v:lnum)
setlocal foldtext=vimtex#fold#text()

" Config of documentation filetypes
source $VIMHOME\after\ftplugin\gendocs.vim
