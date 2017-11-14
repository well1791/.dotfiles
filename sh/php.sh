export_path "${HOME}/.composer/vendor/bin"

src_file "${HOME}/.phpbrew/bashrc" # MAC

function homestead() {
  homestead_dir="${HOME}/Homestead"

  if ! is_dir $homestead_dir || ! is_cmd "vagrant"; then
    echo "Error: No \"${homestead_dir}\" directory, or vagrant command."
    return 1
  fi

  ( cd $homestead_dir && vagrant $* )
}
