#!/bin/sh

command -v brew >/dev/null 2>&1
if [ "$?" -ne "0" ]; then
    echo 'Install Homebrew: http://brew.sh/'
    exit 1
fi

brew update
brew doctor
brew upgrade

if [[ $(brew tap) != *cask* ]]; then
	brew tap phinze/homebrew-cask
	brew install brew-cask
fi

# Install Missing Homebrew formulas
#
brew list > /tmp/installed
TO_INSTALL=$(comm -13 /tmp/installed formulas)

if [ ! -z "${TO_INSTALL}" ]; then
	brew install ${TO_INSTALL}
fi

# Install Missing Cask formulas
#
brew cask list > /tmp/installed
TO_INSTALL=$(comm -13 /tmp/installed cask-formulas)

if [ ! -z "${TO_INSTALL}" ]; then
	brew cask install ${TO_INSTALL}
fi

# Install terminal tools
#
if [ ! -f $(brew --prefix)/bin/gitx ]; then
	echo "Install gitx terminal tool"
	ln -s /opt/homebrew-cask/Caskroom/gitx/latest/GitX.app/Contents/Resources/gitx $(brew --prefix)/bin/gitx
fi
if [ ! -f $(brew --prefix)/bin/mate ]; then
	echo "Install mate terminal tool"
	cp /opt/homebrew-cask/Caskroom/textmate/latest/TextMate.app/Contents/Resources/mate $(brew --prefix)/bin/mate
fi