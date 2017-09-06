#
# User configuration sourced by interactive shells
#

# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

export VISUAL=vim
export EDITOR="${VISUAL}"
export PATH="${HOME}/.local/bin:/usr/local/sbin:${PATH}"


#bindkey -e
eval $(/usr/libexec/path_helper -s)

# MacOS X - Only
# Pipe colors to less (mac os)
export CLICOLOR_FORCE=1
# install gnu cli tools
# see: https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
# brew install coreutils
# allow you to use gnu cli tools as native
# export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
# alias sed=gsed # because option -i on mac is different

# Enable interative comments
setopt interactivecomments

# Aliases
alias tmux="tmux -2"
alias less="less -R"
alias tedit="vim -O ${HOME}/.tmux.conf.local ${HOME}/.tmux.conf && tmux source ${HOME}/.tmux.conf && tmux display '${HOME}/.tmux.conf sourced'"
alias zedit="vim ${HOME}/.zshrc && source ${HOME}/.zshrc"

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
source $(brew --prefix autoenv)/activate.sh
export WORKON_HOME="${HOME}/.virtualenvs"
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh
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
