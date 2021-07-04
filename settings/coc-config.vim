" Paths using Vim variables, which is easier to make Windows/Linux compatible
call coc#config('coc.preferences', {
        \ 'python.venvPath': "$HOME/.virtualenvs",
        \ "python.formatting.blackPath": OSDependentPathJoiner(python_scripts_location, "black"),
        \ "python.linting.pylintPath": OSDependentPathJoiner(python_scripts_location, "pylint"),
        \ })
