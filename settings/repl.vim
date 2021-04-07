if has('win32')
    if len($VIRTUAL_ENV) > 1
        let g:repl_python_pre_launch_command = $VIRTUAL_ENV . '\Scripts\activate'
    endif
    let g:repl_program = {
        \	'python': 'ipython',
        \	'rmd': 'r',
        \	'default': 'cmd'
        \	}
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
