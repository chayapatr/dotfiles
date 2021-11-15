#!/usr/bin/env bash

echo "👋 Hi there :)"
echo

scripts="$(ls setup/*.sh)"

for script in $scripts
do
  echo "🏃 Running $script"
  bash $script
  echo
done

echo "👍 Done!"