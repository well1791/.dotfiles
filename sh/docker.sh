# source: https://docs.docker.com/compose/completion/#zsh
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
