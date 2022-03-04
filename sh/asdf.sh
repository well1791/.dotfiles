if is_cmd "brew"; then
  src_file "$(brew --prefix asdf)/asdf.sh"
else
  src_file "$HOME/.asdf/asdf.sh"
fi
