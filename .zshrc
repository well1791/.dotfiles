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

#bindkey -e
eval $(/usr/libexec/path_helper -s)

# aliases
alias tmux="tmux -2"
alias ghc="stack exec -- ghc"
alias ghci="stack exec -- ghci"
alias vscode="/usr/local/bin/code"

# shortcut directories
alias sb="cd ~/code/StackBuilders"
alias twi="cd ~/code/Twilio"
alias well="cd ~/code/well1791"

# Node env
export PATH="$HOME/.yarn/bin:$PATH"
export NVM_DIR="/usr/local/opt/nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"  # This loads nvm

# PHP env
export PATH="${HOME}/.composer/vendor/bin:${PATH}"
[[ -e "${HOME}/.phpbrew/bashrc" ]] && source "${HOME}/.phpbrew/bashrc"

# Python virtualenv
export WORKON_HOME="${HOME}/.virtualenvs"
[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh
[[ -s "${HOME}/.pythonrc" ]] && source "${HOME}/.pythonrc"

# Ruby env
export PATH="${HOME}/.rbenv/bin:${PATH}"
eval "$(rbenv init -)"

# Jvm env
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
