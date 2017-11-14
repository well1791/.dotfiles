#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Source zim
if [[ -s ${ZIM_HOME}/init.zsh ]]; then
  source ${ZIM_HOME}/init.zsh
fi


DOTF="${HOME}/.dotfiles"
FUNCS="${DOTF}/functions.sh"

if [[ -d "$DOTF" ]] && [[ -f "$FUNCS" ]];  then
  export DOTF
  source "$FUNCS"
  source_files
fi
