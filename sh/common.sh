export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LESS="--no-init --RAW-CONTROL-CHARS --ignore-case --quit-if-one-screen --silent --tabs=4 --window=-2"

export_path "${HOME}/.local/bin"
export_path "/usr/local/sbin"

alias dotf="cd ${DOTF}"
unalias gs

is_cmd batcat && alias cat=batcat

# Git log one-line - from branch up to HEAD
function glof() {
  branch="${1-origin/master}"

  glo ${branch}~1..HEAD

  return $?
}
