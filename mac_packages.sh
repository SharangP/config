#!/bin/bash

set -e

# Install homebrew if not already installed
if [[ ! $(which brew) ]]; then
  echo "Installing Homebrew."
  ruby \
    -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
    </dev/null
fi

brew tap caskroom/cask
brew tap spotify/public

brew install coreutils the_silver_searcher macvim
brew cask install \
    alfred \
    brave-browser \
    caffeine \
    discord \
    docker \
    evernote \
    flux \
    google-chrome \
    iterm2 \
    postman \
    spotify \
    vlc

