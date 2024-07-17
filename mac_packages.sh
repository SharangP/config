#!/bin/bash

set -e

# Install homebrew if not already installed
if [[ ! $(which brew) ]]; then
  echo "Installing Homebrew."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null
fi

# Add to path
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"


brew install \
    coreutils \
    docker \
    the_silver_searcher \
    vim
brew install --cask \
    alfred \
    atom \
    brave-browser \
    flux \
    google-chrome \
    iterm2 \
    notion \
    slack \
    spotify \
    visual-studio-code \
    warp \
    zoom

