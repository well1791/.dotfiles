export_var "NVM_DIR" "/usr/local/opt/nvm" is_dir

export_path "${HOME}/.yarn/bin"

src_file "${NVM_DIR}/nvm.sh"
src_file "${NVM_DIR}/bash_completion"
