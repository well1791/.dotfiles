#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="${HOME}/.local/bin:${PATH}"

bindkey -e
eval $(/usr/libexec/path_helper -s)

# aliases
alias tmux="tmux -2"
alias ghc='stack exec -- ghc'
alias ghci='stack exec -- ghci'
alias vscode="/usr/local/bin/code"

# Node env
export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh"   ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# PHP env
[[ -e "${HOME}/.phpbrew/bashrc" ]] && source "${HOME}/.phpbrew/bashrc"
export PATH="${HOME}/.composer/vendor/bin:${PATH}"

# Python virtualenv
# source ~/.pythonrc
export WORKON_HOME="${HOME}/.virtualenvs"
if [[ -s /usr/local/bin/virtualenvwrapper.sh ]]; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# Ruby env
export PATH="${HOME}/.rbenv/bin:${PATH}"

# Java env
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$PATH"
