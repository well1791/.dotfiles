export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export_path "${HOME}/.local/bin"
export_path "/usr/local/sbin"

alias less="less -R"
alias dotf="cd ${DOTF}"
unalias gs

# Git log one-line - from branch up to HEAD
function glof() {
  branch="${1-origin/master}"

  glo ${branch}~1..HEAD

  return $?
}

