

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

# Source path
function src_path () {
  [[ -s $1 ]] && source $1
  return $?
}

# Export path appending PATH variable
function export_path () {
  [[ -d $1 ]] && export PATH="${1}:${PATH}"
  return $?
}

function exists() {
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
src_path "${NVM_DIR}/nvm.sh"
export_path "${HOME}/.yarn/bin"


# python
export WORKON_HOME="${HOME}/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"
src_path "${HOME}/.pythonrc"
src_path "/usr/local/bin/virtualenvwrapper.sh"


# ruby
export_path "${HOME}/.rbenv/bin"
exists "rbenv" && eval "$(rbenv init -)"


# jvm
export SDKMAN_DIR="${HOME}/.sdkman"
src_path "${SDKMAN_DIR}/bin/sdkman-init.sh"

# php
export_path "${HOME}/.composer/vendor/bin"
src_path "${HOME}/.phpbrew/bashrc" # MAC

function homestead() {
  homestead_dir="${HOME}/Homestead"

  if [ ! -d $homestead_dir ] || ! exists "vagrant"; then
    echo "No ${homestead_dir} directory, or vagrant command."
    return 1
  fi

  ( cd $homestead_dir && vagrant $* )
}


####################
###   ALIASES   ###
####################

# directories
alias dotf="cd ${HOME}/.dotfiles"
CODE_PATH="${HOME}/Code"
alias sb="cd ${CODE_PATH}/StackBuilders"
alias deved="cd ${CODE_PATH}/Twilio/deved"
alias well="cd ${CODE_PATH}/well1791"

# common
alias less="less -R"
alias tedit="vim -O ${HOME}/.tmux.conf.local ${HOME}/.tmux.conf && tmux source ${HOME}/.tmux.conf && tmux display '${HOME}/.tmux.conf sourced'"
alias zedit="vim ${HOME}/.zshrc && source ${HOME}/.zshrc"
exists "tmux" && alias tmux="tmux -2"

# haskell
exists "stack" && alias ghci="stack exec -- ghci"
