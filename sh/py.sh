export_var "WORKON_HOME" "${HOME}/.virtualenvs" is_dir
export_var "VIRTUALENVWRAPPER_PYTHON" "/usr/bin/python" is_dir

export_path "${HOME}/.pyenv/bin"

src_file "${HOME}/.pythonrc"
src_file "/usr/local/bin/virtualenvwrapper.sh"

is_cmd "pyenv" && eval "$(pyenv init -)"
