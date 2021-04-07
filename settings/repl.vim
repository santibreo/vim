if has('win32')
    if &filetype == 'python'
        nnoremap <leader>repl :vs<CR>:term<CR>Aipython<CR>cls<CR>
    else
        nnoremap <leader>repl :vs<CR>:term<CR>Acls<CR>
    endif
else
    if len($VIRTUAL_ENV) > 1
        let g:repl_python_pre_launch_command = 'source ' . $VIRTUAL_ENV . '/bin/activate'
    endif
    let g:repl_program = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	'default': 'bash'
        \	}
endif
let g:repl_ipython_version = '7.7'
let g:repl_position = 3
