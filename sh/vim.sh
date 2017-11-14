! is_cmd "vim" && return 0

export VISUAL=vim
export EDITOR="${VISUAL}"

ZSHRC="${HOME}/.zshrc"
is_file "${ZSHRC}" && alias ze="vim ${ZSHRC} && source ${ZSHRC}"

TMUX_CONF="${HOME}/.tmux.conf"
TMUX_LOCAL="${HOME}/.tmux.conf.local"
if is_file "$TMUX_CONF" && is_file "$TMUX_LOCAL"; then
  alias te="vim -O $TMUX_LOCAL $TMUX_CONF && tmux source ${TMUX_CONF} && tmux display '${TMUX_CONF} sourced'"
fi
