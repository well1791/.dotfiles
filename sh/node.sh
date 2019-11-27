export_path "${HOME}/.yarn/bin"

export_var "VOLTA_HOME" "${HOME}/.volta" is_dir
src_file "$VOLTA_HOME/load.sh"
export_path "$VOLTA_HOME/bin"
