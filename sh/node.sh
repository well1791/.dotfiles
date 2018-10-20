export_path "${HOME}/.yarn/bin"

# source: http://broken-by.me/lazy-load-nvm/
nvm() {
    unset -f nvm
    export_var "NVM_DIR" "${HOME}/.nvm" is_dir
    src_file "${NVM_DIR}/nvm.sh"
    nvm "$@"
}

node() {
    unset -f node
    export_var "NVM_DIR" "${HOME}/.nvm" is_dir
    src_file "${NVM_DIR}/nvm.sh"
    node "$@"
}

npm() {
    unset -f npm
    export_var "NVM_DIR" "${HOME}/.nvm" is_dir
    src_file "${NVM_DIR}/nvm.sh"
    npm "$@"
}
