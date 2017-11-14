#!/bin/bash

# Create (or force) symlinks from ~/.dotfiles/<file> to ~/<file>
function ln_dotf() {
  f="${HOME}/${1}"
  [[ -z "$2" ]] && dotf="${2}/${1}" || dotf="${DOTF}/${1}"

  # sourced from: functions.sh@lnsf
  lnsf "$dotf" "$f"
}

###################
### INSTALATION ###
###################


# Prepare set up
cd "$HOME"

export DOTF="${HOME}/.dotfiles"

if [[ ! -d "$DOTF" ]]; then
  git clone https://github.com/well1791/dotfiles.git "$DOTF"
fi

source "${DOTF}/functions.sh"


# Begin the installation

# zsh
ZIM_DIR="${ZDOTDIR:-${HOME}}/.zim"
ZIM_TPL="${ZIM_DIR}/templates"

if ! is_dir "$ZIM_DIR"; then
  git clone --recursive https://github.com/well1791/zim.git "$ZIM_DIR"
fi

for fz in $(ls "${ZIM_TPL}"); do
  src="${ZIM_TPL}/${fz}"
  dst="${HOME}/.${fz}"

  rm "$dst" 2> /dev/null
  cp "$src" "$dst"
done

ln_dotf ".zshrc"
ln_dotf ".zimrc"


# tmux
TMUX_CONF="${HOME}/.tmux"

if ! is_dir "$TMUX_CONF"; then
  git clone https://github.com/well1791/.tmux.git "$TMUX_CONF"
fi

ln_dotf ".tmux.conf" "$TMUX_CONF"
ln_dotf ".tmux.conf.local"


# vim
ln_dotf ".vimrc.local"


# Go back to the directory before running the script
cd -
