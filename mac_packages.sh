#!/bin/bash

set -e

# Install homebrew if not already installed
if [[ ! $(which brew) ]]; then
  echo "Installing Homebrew."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null
fi

# Add to path
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/sphadke/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/sphadke/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


brew tap homebrew/cask

brew install \
    coreutils \
    docker \
    the_silver_searcher 
brew install --cask \
    alfred \
    atom \
    brave-browser \
    flux \
    google-chrome \
    iterm2 \
    neovim \
    notion \
    postman \
    slack \
    spotify \
    zoom

