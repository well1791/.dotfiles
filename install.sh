#!/bin/bash

function ln_dotf() {
  f="${HOME}/${1}"
  [[ -z "$2" ]] && dotf="${2}/${1}" || dotf="${HOME}/.dotfiles/${1}"

  # If source link doesn't exist
  if [[ ! -f "$dotf" ]]; then
    echo "File: \"$dotf\" doesn't exists! There is nothing to link."
    return 0
  fi

  # Create (or force) a symbolic link from ~/.dotfiles/<file> to ~/<file>
  ln -s -f "$dotf" "$f"
}

###################
### INSTALATION ###
###################


# First steps
cd "$HOME"
DOTF_DIR="${HOME}/.dotfiles"

if [[ ! -d "$DOTF_DIR" ]]; then
 git clone https://github.com/well1791/dotfiles.git "$DOTF_DIR"
fi


# zsh
ZIM_DIR="${ZDOTDIR:-${HOME}}/.zim"
ZIM_TPL="${ZIM_DIR}/templates"

if [[ ! -d "$ZIM_DIR" ]]; then
  git clone --recursive https://github.com/well1791/zim.git "$ZIM_DIR"
fi

for fz in $(ls "${ZIM_TPL}"); do
  src="${ZIM_TPL}/${fz}"
  dst="${HOME}/.${fz}"

  rm "$dst" 2>/dev/null
  cp "${src}" "${dst}"
done

ln_dotf ".zshrc"
ln_dotf ".zimrc"


# tmux
TMUX_CONF="${HOME}/.tmux"

if [[ ! -d "$TMUX_CONF" ]]; then
  git clone https://github.com/well1791/.tmux.git "$TMUX_CONF"
fi

ln_dotf ".tmux.conf" "$TMUX_CONF"
ln_dotf ".tmux.conf.local"


# vim
ln_dotf ".vimrc.local"


# Go back to the directory before running the script
cd -
