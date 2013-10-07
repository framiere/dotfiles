#!/bin/sh

command -v brew >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
    echo 'Install Homebrew: http://brew.sh/'
    exit 1
fi

brew doctor
brew update
brew upgrade

if [[ $(brew tap) != *cask* ]]; then
	brew tap phinze/homebrew-cask
	brew install brew-cask
fi

brew install ack
brew install bash-completion
brew install cloudbees-sdk
brew install dos2unix
brew install gradle
brew install heroku-toolbelt
brew install hub
brew install ioke
brew install jq
brew install jsonpp
brew install maven
brew install md5sha1sum
brew install mongodb
brew install node
brew install parallel
brew install phantomjs
brew install pigz
brew install pngcrush
brew install sonar
brew install ssh-copy-id
brew install the_silver_searcher
brew install tig
brew install tree
brew install watch
brew install wget

brew cask install alfred
brew cask install google-chrome
brew cask install github
brew cask install gitx
brew cask install growlnotify
brew cask install imagealpha
brew cask install imageoptim
brew cask install intellij-ultimate
brew cask install iterm2
brew cask install namemangler
brew cask install open-office
brew cask install pacifist
brew cask install slate
brew cask install subtitles
brew cask install super-duper
brew cask install textmate
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
