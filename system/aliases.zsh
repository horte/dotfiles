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

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
 alias "$method"="lwp-request -m '$method'"
done
