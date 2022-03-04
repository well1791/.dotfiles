function is_file() {
  [[ -f "$1" ]]
  return $?
}

function is_dir() {
  [[ -d "$1" ]]
  return $?
}

function is_cmd() {
  command -v "$1" > /dev/null 2>&1
  return $?
}

# Source file if exists
function src_file () {
  is_file "$1" && source "$1"
  return $?
}

# Export a variable if cmd is true
function export_var() {
  var="$1"
  val="$2"
  cmd="$3"

  "$cmd" "$val" && eval 'export "${var}=${val}"'
  return $?
}

# Export path appending PATH variable
function export_path () {
  grep ":$1" -q <<< $PATH && return 0

  is_dir "$1" && export PATH="${1}:${PATH}"
  return $?
}

# Create (or force) a symbolic link
function lnsf() {
  src="$1"
  dst="$2"

  if ! is_file "$src" && ! is_dir "$src"; then
    echo "Error: \"$src\" doesn't exists! There is nothing to link."
    return 0
  fi

  ln -s -f "$src" "$dst"
  return $?
}
