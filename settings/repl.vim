if has('win32')
    " Make it work in Windows
    let g:repl_program = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	'default': 'zsh'
        \	}
else
    if len($VIRTUAL_ENV) > 1
        let g:repl_python_pre_launch_command = 'source ' . $VIRTUAL_ENV . '/bin/activate'
    endif
    let g:repl_program = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	'default': 'zsh'
        \	}
endif
nnoremap <leader>repl ;REPLToggle<CR>
let g:repl_ipython_version = '7.7'
let g:repl_position = 3
