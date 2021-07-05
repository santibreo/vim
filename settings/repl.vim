if has('win32')
    " Make it work in Windows
    let g:repl_program = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	}
else
    "if len($VIRTUAL_ENV) > 1
    "    let g:repl_python_pre_launch_command = 'source ' . $VIRTUAL_ENV . '/bin/activate'
    "endif
    let g:repl_filetype_commands = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	'default': 'zsh'
        \	}
endif

nmap <leader><leader>r ;ReplToggle<CR>
nmap <leader><leader>c ;ReplClose<CR>
nmap <leader>w <Plug>ReplSendLine
vmap <leader>w <Plug>ReplSendVisual
