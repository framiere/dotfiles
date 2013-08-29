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
	brew cask alfred link
fi

FORMULAS_TO_INSTALL=(
	ack
	bash-completion
	brew-cask
	cloudbees-sdk
	dos2unix
	git
	gradle
	hub
	ioke
	jq
	jsonpp
	maven
	md5sha1sum
	mongodb
	node
	parallel
	phantomjs
	pigz
	pngcrush
	sonar
	ssh-copy-id
	the_silver_searcher
	tig
	tree
	watch
	wget
)

for i in $(brew list); do
	FORMULAS_TO_INSTALL=(${FORMULAS_TO_INSTALL[@]//*$i*})
done

for FORMULA in ${FORMULAS_TO_INSTALL}; do
	brew install ${FORMULA}
done

CASK_FORMULAS_TO_INSTALL=(
	github
	gitx
	growlnotify
	imagealpha
	imageoptim
	namemangler
	open-office
	pacifist
	slate
	subtitles
	super-duper
	transmission
	vagrant
	virtualbox
)

for i in $(brew cask list); do
	CASK_FORMULAS_TO_INSTALL=(${CASK_FORMULAS_TO_INSTALL[@]//*$i*})
done

for FORMULA in ${CASK_FORMULAS_TO_INSTALL}; do
	brew cask install ${CASK_FORMULAS_TO_INSTALL}
done
