# My dotfiles

### First thing first!
- [chezmoi](https://www.chezmoi.io/install/#one-line-package-install)
- [spacevim - vim](https://spacevim.org/quick-start-guide/#install)
- [zimfw - zsh](https://github.com/zimfw/zimfw#installation)
- [gpakosz - tmux](https://github.com/gpakosz/.tmux.git#installation)
- [fira code - font](https://github.com/ryanoasis/nerd-fonts)


### Common CLI tools
- important!
  - [rg](https://github.com/BurntSushi/ripgrep#installation) (instead of `ag`/`grep`/etc...)
  - [exa](https://github.com/ogham/exa#installation) (instead of `ls`)
  - [fasd](https://github.com/clvv/fasd#install) (all in one; `autojump`, `z`, `v`)
  - [bat](https://github.com/sharkdp/bat) (instead of `cat`)

- not so important
  - [fd](https://github.com/sharkdp/fd#installation) (instead of `find`)
  - [lf](https://github.com/gokcehan/lf#installation) (file manager)
  - [fzf](https://github.com/junegunn/fzf#installation) (fuzzy file finder)
  - [git-hooks](https://medium.com/better-programming/how-to-automatically-add-the-ticket-number-in-git-commit-message-bda5426ded05) (default ticket name)


### Http utils
- [aria2](https://aria2.github.io/)
- [httpie](https://github.com/jakubroztocil/httpie#installation)
- [http-prompt](http://http-prompt.com/#install) (interactive cli)
- [insomnia](https://github.com/getinsomnia/insomnia#download) (*gui* - Http and GraphQL client)


### ngrok alternatives
- [piping-server](https://github.com/nwtgck/piping-server)
- [localtunnel](https://github.com/localtunnel/localtunnel#installation) (instead of `ngrok`)


### Utils
- [jq](https://stedolan.github.io/jq/download/) (json CLI processor)
- [json-server](https://github.com/typicode/json-server#getting-started) (fake REST API)


### Tmux utils
- [tmate](https://tmate.io)
- [wemux](https://github.com/zolrath/wemux#how-to-install)
- [tmuxp](https://github.com/tmux-python/tmuxp#installation) (tmux session manager)


### Git utils
- [lazygit](https://github.com/jesseduffield/lazygit#installation) (CLI git "app")
- [git-delta](https://github.com/dandavison/delta#installation) (diffs looking good :ok_hand:)
- [git-fuzzy](https://github.com/bigH/git-fuzzy#installing)


### Misc.
- [weechat](https://weechat.org/download/) (cli irc client)


### Mac
- [alt+tab](https://alt-tab-macos.netlify.app/#installation) (app switcher)
- [iina](https://iina.io/)
- [Skitch](https://evernote.com/products/skitch)
- [RecordIt](http://recordit.co/)
- [Replay](https://www.replay.io/pricing)


### Linux (Ubuntu 20.04)
- cli: `sudo apt-get install -y dconf-editor && dconf-editor`, gui: [`open dconf Editor > org > gnome > shell > app-switcher > current-workspace-only: true`](https://askubuntu.com/a/963792)
- cli: `sudo apt-get install gnome-tweaks`, gui: `open Tweaks > Keyboard & Mouse > Additional Layout Options > Caps Lock behavior`
- gui: `open Settings > Keyboard Shortcuts`
  - `Launch terminal: Disabled`
  - `Switch applications: Alt+Tab`
  - `Switch to workspace 1: Ctrl+F1`
  - `Switch windows: Disabled`
  - `Copy a screenshot of an area to clipboard: Shift+Alt+$`
  - `Close window: Alt+Q`
  - `Slack: Alt+-`


### Zsh Themes
- [powerlevel9k](https://github.com/bhilburn/powerlevel9k#installation)
- [pure](https://github.com/sindresorhus/pure#install)
- [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt#installing)
- [colors](https://github.com/mbadolato/iTerm2-Color-Schemes) - [BlulocoLight](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/BlulocoLight.itermcolors)


## CLI tools by language

#### Node
- [yarn](https://yarnpkg.com/en/docs/install#linux-tab)
- [fnm](https://github.com/Schniz/fnm#installation)

#### Python
- [pipx](https://pypa.github.io/pipx/installation/)
- [poetry](https://python-poetry.org/docs/#osx--linux--bashonwindows-install-instructions)
- [virtualenv](https://virtualenv.pypa.io/en/latest/installation.html#via-pipx)

#### Ruby
- [rbenv](https://github.com/rbenv/rbenv#installation)

#### JVM
- [sdk](http://sdkman.io/install.html)
- [sbt](http://www.scala-sbt.org/1.x/docs/index.html#Install)
- [gradle](https://gradle.org/)

#### Haskell
- [stack](https://docs.haskellstack.org/en/stable/README/#how-to-install)

#### Rust
- [rustup](https://www.rustup.rs/)
- [cargo](http://doc.crates.io/#installing)

#### PHP (sigh...)
- [virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [vagrant](https://www.vagrantup.com/docs/installation)
- [homestead](https://laravel.com/docs/homestead)
