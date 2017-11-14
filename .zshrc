

#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi


############################
###   HELPER FUNCTIONS   ###
############################

# Enable interative comments
setopt interactivecomments

# Default and preferred editor
export VISUAL=vim
export EDITOR="${VISUAL}"

# Verify if file exists
function is_file() {
  [[ -s $1 ]]
  return $?
}

# Verify if directory exists
function is_dir() {
  [[ -d $1 ]]
  return $?
}

# Source path
function src_file () {
  is_file $1 && source $1
  return $?
}

# Export path appending PATH variable
function export_path () {
  is_dir $1 && export PATH="${1}:${PATH}"
  return $?
}

function is_cmd() {
  type $1 1>/dev/null
  return $?
}

####################
###   SETTINGS   ###
####################

# Export bin and sbin paths
export_path "${HOME}/.local/bin"
export_path "/usr/local/sbin"


# node
export NVM_DIR="/usr/local/opt/nvm"
src_file "${NVM_DIR}/nvm.sh"
src_file "${NVM_DIR}/bash_completion"
export_path "${HOME}/.yarn/bin"


# python
export WORKON_HOME="${HOME}/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"
src_file "${HOME}/.pythonrc"
src_file "/usr/local/bin/virtualenvwrapper.sh"


# ruby
export_path "${HOME}/.rbenv/bin"
is_cmd "rbenv" && eval "$(rbenv init -)"


# jvm
export SDKMAN_DIR="${HOME}/.sdkman"
src_file "${SDKMAN_DIR}/bin/sdkman-init.sh"

# php
export_path "${HOME}/.composer/vendor/bin"
src_file "${HOME}/.phpbrew/bashrc" # MAC

function homestead() {
  homestead_dir="${HOME}/Homestead"

  if ! is_dir $homestead_dir || ! is_cmd "vagrant"; then
    echo "No ${homestead_dir} directory, or vagrant command."
    return 1
  fi

  ( cd $homestead_dir && vagrant $* )
}


####################
###   ALIASES   ###
####################

# Source aliases if they exists
src_file "${HOME}/.aliases"

# directories
DOTF="${HOME}/.dotfiles"
is_dir $DOTF && alias dotf="cd ${DOTF}"

# Common
alias less="less -R"
alias tedit="vim -O ${HOME}/.tmux.conf.local ${HOME}/.tmux.conf && tmux source ${HOME}/.tmux.conf && tmux display '${HOME}/.tmux.conf sourced'"
alias zedit="vim ${HOME}/.zshrc && source ${HOME}/.zshrc"
is_cmd "tmux" && alias tmux="tmux -2"

# Language specific
is_cmd "stack" && alias ghci="stack exec -- ghci"
