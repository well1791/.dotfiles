# ------------------------------
# Initialize all custom settings
# ------------------------------

DOTF="${HOME}/.dotfiles"
FUNCS="${DOTF}/functions.sh"

if [[ -d "$DOTF" ]] && [[ -f "$FUNCS" ]]; then
  export DOTF
  source "$FUNCS"
  is_cmd source_files && source_files
fi


# -----------------------------------
# Start a tmux session by default
# -----------------------------------

if is_cmd tmux && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  default_session="w"
  if tl | rg -e "^${default_session}:" > /dev/null; then
    tmux attach-session -t w
  else
    tmux new-session -s "$default_session"
  fi
fi
