#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
    echo "🍺 Install Homebrew"
    y | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "⭐ Homebrew is already installed."
fi