# # User configuration sourced by interactive shells
#
#

# PL9K | Setup PowerLevel9K theme
POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme

#      | Basic configs
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time status background_jobs load)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B3'

#      | Disable icons
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_VCS_GIT_ICON=''

#      | Limit dir and vcs configs
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=7

#      | Disable icons
POWERLEVEL9K_DIR_HOME_BACKGROUND="016"
POWERLEVEL9K_DIR_HOME_FOREGROUND="153"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="016"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="153"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="016"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="153"


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
