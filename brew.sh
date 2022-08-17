type brew &>/dev/null || {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
}
brew update

function brew_install {
  (brew list $@ && brew upgrade $@) || brew install $@
}

#app
brew_install --cask slack
brew_install --cask spotify

#browser
brew_install --cask google-chrome
brew_install --cask firefox
brew_install --cask brave-browser

#shell
brew_install openssh
brew_install zsh
brew_install git
brew_install zsh-completions
chmod g-w,o-w "$HOMEBREW_PREFIX/share"
chmod g-w,o-w "$HOMEBREW_PREFIX/share/zsh"
brew_install tree
brew_install jq
brew_install htmlq
brew_install --cask anaconda
source ~/.zshrc

#ide
brew_install --cask iterm2
brew_install neovim emacs #vim
#To restart emacs after an upgrade:
#  brew services restart emacs
#Or, if you don't want/need a background service you can just run:
#  /opt/homebrew/opt/emacs/bin/emacs --fg-daemon

#c++
brew_install autoconf
brew_install automake
brew_install pkg-config
brew_install cmake
brew_install ninja
brew_install bazel
#lib
brew_install boost
brew_install double-conversion
brew_install gflags
brew_install glog

#cloud
brew_install --cask google-cloud-sdk
gcloud -q components update
brew_install docker




