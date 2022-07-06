# ------------------------------
# Initialize all custom settings
# ------------------------------

source "./functions.sh"
for f in "./sh"/*.sh; do
  source $f
done


# -----------------------------------
# Start a tmux session by default
# -----------------------------------

if is_cmd tmux && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  local default_session="w"
  if tmux list-sessions | rg -e "^${default_session}:" > /dev/null; then
    tmux attach-session -t w
  else
    tmux new-session -s "$default_session"
  fi
fi
