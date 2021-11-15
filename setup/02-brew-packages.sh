#!/usr/bin/env bash

dir="$(dirname $0)"

add-file() {
    echo "🔧 Adding $2... "
    printf "# $1 \n" >> Brewfile
    cat "$dir/$1/$2" >> Brewfile
    printf "\n\n" >> Brewfile
}

rm Brewfile && touch Brewfile

# Add Package
# add-file packages Core
# add-file packages Utility
# add-file packages Browsers
# add-file packages Development
# add-file packages Communication
# 
# add-file packages-cli Cli
# add-file packages-cli Misc

echo "📦 Installing Packages... "
brew bundle --file="Brewfile"