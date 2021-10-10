#!/bin/sh

set -eu

APP_DIR=~/Library/Application\ Support/Code/User

if [ ! -d "$APP_DIR" ]; then
  mkdir -p "$APP_DIR"
fi

if [ -L "${APP_DIR}/settings.json" ]; then
  rm "${APP_DIR}/settings.json"
fi
ln -s "$PWD/vscode/config.d/settings.json" "${APP_DIR}/settings.json"

if [ -x "$(command -v code)" ]; then
  cat < $PWD/vscode/config.d/extensions | while read -r line

  do
    code --install-extension "$line"
  done

else
  echo "VSCode is not installed."
fi