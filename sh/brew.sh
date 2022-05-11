# brew install hammerspoon --cask

function brew-updt() {
  is_cmd brew || return 0

  echo -e '\nbrew update\n' && brew update && \
  echo -e '\nbrew upgrade\n' && brew upgrade && \
  echo -e '\nbrew upgrade --cask\n' && brew upgrade --cask && \
  echo -e '\nbrew cleanup\n' && brew cleanup
}
