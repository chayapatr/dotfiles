#!/usr/bin/env bash

# Set Fish as default shell

FISH="$(which fish)"
DEFAULT_SHELL=$(dscl . -read ~/ UserShell | sed 's/UserShell: //')

echo "📦 Set fish as default shell... "
sudo chsh -s $FISH
echo "✅ use $FISH as the login shell!"

# Install OMF

if [ ! -d "$HOME/.local/share/omf/" ]
then
  echo "🌟 Installing oh-my-fish..."

  mkdir -p "$HOME/.local/share"

  # Install oh-my-fish
  curl -s -L https://get.oh-my.fish > omf.install.fish
  fish omf.install.fish --noninteractive --yes &> /dev/null

  # Clean up oh-my-fish installation script
  rm -f omf.install.fish

  omf install mars

  echo "✅ oh-my-fish is installed!"
else
  echo "👍 oh-my-fish is already installed."
fi

# show all files
echo "🔧 Show hidden files"
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
