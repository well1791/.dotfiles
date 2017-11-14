#!/bin/bash

function ln_dotf() {
  f="${HOME}/${1}"
  dotf="${HOME}/.dotfiles/${1}"

  # If there is already a non-zero symbolic link
  if [[ -L "$f" ]] && [[ -f "$f" ]]; then
    echo "Link: $f already exists! Please check if it is linked correctly."
    return 0
  fi

  # If source link doesn't exist
  if [[ ! -f "$dotf" ]]; then
    echo "File: "$dotf" doesn't exists! There is nothing to link."
    return 0
  fi

  # Remove file if exists and is regular
  [[ -f "$f" ]] && rm "$f"

  # Create a symbolic link between ~/.dotfiles/<file> and ~/<file>
  ln -s "$dotf" "$f"
}

###################
### INSTALATION ###
###################


# First steps
cd "${HOME}"
git clone https://github.com/well1791/dotfiles.git "${HOME}/.dotfiles"


# zsh
git clone --recursive https://github.com/well1791/zim.git "$ZIM_DIR"
ZIM_DIR="${ZDOTDIR:-${HOME}}/.zim"
ZIM_TPL="${ZIM_DIR}/templates"

for fz in $(ls "${ZIM_TPL}"); do
  src="${ZIM_TPL}/${fz}"
  dst="${HOME}/.${fz}"

  rm "$dst" 2>/dev/null
  cp "${src}" "${dst}"
done

ln_dotf ".zshrc"
ln_dotf ".zimrc"


# tmux
git clone https://github.com/well1791/.tmux.git "$TMUX_CONF"
TMUX_CONF="${HOME}/.tmux"
ln -s -f "${TMUX_CONF}/.tmux.conf" "${HOME}/.tmux.conf"
ln_dotf ".tmux.conf.local"


# vim
ln_dotf ".vimrc.local"


# Go back to the directory before running the script
cd -
