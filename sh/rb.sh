export_var "GEM_HOME" "${HOME}/.gem" is_dir
export_path "${GEM_HOME}/bin"
export_path "${HOME}/.rbenv/bin"

is_cmd "rbenv" && eval "$(rbenv init -)"

