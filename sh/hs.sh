! is_cmd "stack" && return 0

alias sb="stack build --file-watch --fast --pedantic"
alias se="stack exec"
alias si="stack install"
alias sr="stack repl --test"
alias st="stack test"

alias yd="dotenv -f .env 'stack exec -- yesod devel'"

alias ghci="stack exec -- ghci"
alias ghcmod="ghc-mod"
