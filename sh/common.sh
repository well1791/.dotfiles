export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESS="--no-init --RAW-CONTROL-CHARS --ignore-case --quit-if-one-screen --silent --tabs=4 --window=-2"

export_path "${HOME}/.local/bin"
export_path "/usr/local/sbin"

if is_cmd batcat; then
  alias bat=batcat
  alias cat=batcat
elif is_cmd bat; then
  alias cat=bat
fi

# Git log one-line - from "branch" up to HEAD
function glof() {
  local branch="${1-origin/main}"

  glo ${branch}~2..HEAD

  return $?
}
