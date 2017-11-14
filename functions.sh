function is_file() {
  [[ -s "$1" ]]
  return $?
}

function is_dir() {
  [[ -d "$1" ]]
  return $?
}

function is_cmd() {
  type "$1" > /dev/null
  return $?
}

# Source path if exists
function src_file () {
  is_file "$1" && source "$1"
  return $?
}

# Export a variable if the paths exists
function export_var() {
  var=$1
  val=$2
  cmd=$3

  $cmd $val && eval 'export "${var}=${val}"'
  return $?
}

# Export path appending PATH variable
function export_path () {
  is_dir "$1" && export PATH="${1}:${PATH}"
  return $?
}

# Create (or force) a symbolic link
function lnsf() {
  src="$1"
  dst="$2"

  if ! is_file "$src"; then
    echo "Error: File \"$src\" doesn't exists! There is nothing to link."
    return 0
  fi

  ln -s -f "$dotf" "$f"
}

# Source all files from ~/.dotfiles/sh/*.sh
function source_files() {
  SH_FILES="${DOTF}/sh"

  src_file "${HOME}/.aliases"

  ! is_dir "$SH_FILES" && return 0

  for f in "$SH_FILES"/*.sh; do
    source $f
  done
}
