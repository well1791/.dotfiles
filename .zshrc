#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

export VISUAL=vim
export EDITOR="${VISUAL}"
export PATH="${HOME}/.local/bin:${PATH}"


#bindkey -e
eval $(/usr/libexec/path_helper -s)

# Pipe colors to less (mac os)
export CLICOLOR_FORCE=1

# Enable interative comments
setopt interactivecomments

# Aliases
alias tmux="tmux -2"
alias less="less -R"

# Shortcut directories
alias sb="cd ${HOME}/code/StackBuilders"
alias deved="cd ${HOME}/code/Twilio/deved"
alias well="cd ${HOME}/code/well1791"
alias dotf="cd ${HOME}/.dotfiles"


# Haskell
alias ghc="stack exec -- ghc"
alias ghci="stack exec -- ghci"
# Colors
[[ -s "${HOME}/.local/bin/ghci-color" ]] && alias ghci="stack exec -- ghci-color"


# Node env
export PATH="${HOME}/.yarn/bin:${PATH}"
export NVM_DIR="/usr/local/opt/nvm"
[[ -s "${NVM_DIR}/nvm.sh" ]] && source "${NVM_DIR}/nvm.sh"  # This loads nvm


# Python virtualenv
export WORKON_HOME="${HOME}/.virtualenvs"
[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh
[[ -s "${HOME}/.pythonrc" ]] && source "${HOME}/.pythonrc"


# Ruby env
export PATH="${HOME}/.rbenv/bin:${PATH}"
eval "$(rbenv init -)"


# PHP env
export PATH="${HOME}/.composer/vendor/bin:${PATH}"
[[ -s "${HOME}/.phpbrew/bashrc" ]] && source "${HOME}/.phpbrew/bashrc"


# Jvm env
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

