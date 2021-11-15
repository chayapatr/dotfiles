#!/usr/bin/env bash

# show all files
echo "🔧 Show hidden files"
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
