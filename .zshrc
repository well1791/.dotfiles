

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
}

# Export path appending PATH variable
function export_path () {
  [[ -d $1 ]] && export PATH="${1}:${PATH}"
}


####################
###   SETTINGS   ###
####################

# Export bin and sbin paths
export_path "${HOME}/.local/bin"
export_path "/usr/local/sbin"


# Node
export NVM_DIR="/usr/local/opt/nvm"
src_path "${NVM_DIR}/nvm.sh"
export_path "${HOME}/.yarn/bin"


# Python virtualenv
export WORKON_HOME="${HOME}/.virtualenvs"
export VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"
src_path "${HOME}/.pythonrc"
src_path "/usr/local/bin/virtualenvwrapper.sh"


# Ruby env
export_path "${HOME}/.rbenv/bin"
type "rbenv" 1>/dev/null && eval "$(rbenv init -)"


# Jvm env
export SDKMAN_DIR="${HOME}/.sdkman"
src_path "${SDKMAN_DIR}/bin/sdkman-init.sh"


# PHP env
export_path "${HOME}/.composer/vendor/bin"
src_path "${HOME}/.phpbrew/bashrc" # MAC


####################
###   ALIASES   ###
####################

# Directories
alias dotf="cd ${HOME}/.dotfiles"
CODE_PATH="${HOME}/Code"
alias sb="cd ${CODE_PATH}/StackBuilders"
alias deved="cd ${CODE_PATH}/Twilio/deved"
alias well="cd ${CODE_PATH}/well1791"

# Common
alias less="less -R"
alias tedit="vim -O ${HOME}/.tmux.conf.local ${HOME}/.tmux.conf && tmux source ${HOME}/.tmux.conf && tmux display '${HOME}/.tmux.conf sourced'"
alias zedit="vim ${HOME}/.zshrc && source ${HOME}/.zshrc"
type "tmux" 1>/dev/null && alias tmux="tmux -2"

# Haskell
type stack 1>/dev/null && alias ghci="stack exec -- ghci"
