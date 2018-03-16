! is_cmd "stack" && return 0

alias yd="dotenv -f .env 'stack exec -- yesod devel'"

alias sb="dotenv -f .env.test 'stack build --file-watch --fast --pedantic'"
alias sr="dotenv -f .env.test 'stack repl --test'"
alias st="dotenv -f .env.test 'stack test'"
alias se="stack exec"
alias si="stack install"

alias ghci="stack exec -- ghci"
alias ghcmod="ghc-mod"
