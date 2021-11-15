# code --list-extensions | xargs -L 1 echo code --install-extension

dir="$(dirname $0)"

echo "📦 Installing Visual Studio Code Extensions... "
extensions="$(cat $dir/vscode-extension)"
eval $extensions &> /dev/null