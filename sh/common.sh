export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESS="--no-init --RAW-CONTROL-CHARS --ignore-case --quit-if-one-screen --silent --tabs=4 --window=-2"

export_path "${HOME}/.local/bin"
export_path "/usr/local/sbin"

alias dotf="cd ${DOTF}"
alias gs="printf '\n\t¯\_(ツ)_/¯\n\n'"

if is_cmd batcat; then
  alias bat=batcat
  alias cat=batcat
fi

# Git log one-line - from "branch" up to HEAD
function glof() {
  local branch="${1-origin/master}"

  glo ${branch}~2..HEAD

  return $?
}
