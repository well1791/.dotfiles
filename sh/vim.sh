if is_cmd "nvim"; then
  local v="nvim"
elif is_cmd "vim"; then
  local v="vim"
fi

! is_cmd "$v" && return 0

alias v="$v"
export VISUAL="$v"
export EDITOR="$v"

alias vimdiff="$v -d"

local ZSHRC="${HOME}/.zshrc"
is_file "${ZSHRC}" && alias ze="$v $ZSHRC && source $ZSHRC"

local TMUX_CONF="${HOME}/.tmux.conf"
local TMUX_LOCAL="${HOME}/.tmux.conf.local"
if is_file "$TMUX_CONF" && is_file "$TMUX_LOCAL"; then
  alias te="$v $TMUX_LOCAL $TMUX_CONF && tmux source $TMUX_CONF && tmux display '${TMUX_CONF} sourced'"
fi
