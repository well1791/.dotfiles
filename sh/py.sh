export_var "WORKON_HOME" "${HOME}/.virtualenvs" is_dir
export_var "VIRTUALENVWRAPPER_PYTHON" "/usr/bin/python" is_dir

export_path "${HOME}/.poetry/bin"

src_file "${HOME}/.pythonrc"
src_file "/usr/local/bin/virtualenvwrapper.sh"

if is_cmd pyenv; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init - 2> /dev/null)"
fi

is_cmd owl && eval "$(owl init -)"
