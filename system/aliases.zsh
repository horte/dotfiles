# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# cd to follow symlinks
alias cdp='cd -P'

alias showAllFiles='defaults write com.apple.finder AppleShowAllFiles -boolean true && killall Finder'
alias hideAllFiles='defaults delete com.apple.finder AppleShowAllFiles && killall Finder'