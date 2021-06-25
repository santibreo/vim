function! AddDirToPath()
    echom "Adding current file directory to path"
    execute "!" . "python -c \"import os; os.sys.path.insert(0, os.path.abspath('.'));\""
endfunction
