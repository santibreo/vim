" Common to all documentation filetypes (Markdown, TeX, Rmarkdown, ...)

" Window size
if has("gui_running")
  " GUI (gvim) is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=52
  endif
  if exists("+columns")
    set columns=100
  endif
endif

" Spell check
setlocal spelllang=en
setlocal spell

" Text formatting (wrap better than automatic line breaks)
set wrap
setlocal breakindent                     " Preserve horizontal whitespace when wrapping
setlocal showbreak=►..                   " Begin wrapped line with this
setlocal lbr                             " wrap words
" Linebreak mode
" setlocal tw=80
" setlocal fo+=t
" setlocal fo+=a
" setlocal fo+=w
" setlocal fo+=c

" Mappings
nnoremap <buffer> <leader>grammar :GrammarousCheck<CR>
nnoremap <buffer> <leader>style :cexpr system('proselint ' . expand('%:p'))<CR>

" Fold level
setlocal foldlevel=1
