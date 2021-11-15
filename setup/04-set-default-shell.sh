# code --list-extensions | xargs -L 1 echo code --install-extension

FISH="$(which fish)"
DEFAULT_SHELL=$(dscl . -read ~/ UserShell | sed 's/UserShell: //')

echo "📦 Set fish as default shell... "
sudo chsh -s $FISH
echo "✅ use $FISH as the login shell!"