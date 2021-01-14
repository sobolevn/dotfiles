#!/usr/bin/env bash

set -e

if [ ! $(command -v code-insiders) ]; then
  # Adding `code-insiders` to the `PATH`, it might be missing.
  ls $HOME/.vscode-remote/bin
  VSCODE="$HOME/.vscode-remote/bin/$(ls "$HOME/.vscode-remote/bin")"
  PATH="$VSCODE:$PATH"
  echo "Added $VSCODE to the PATH"
fi

if [ ! $(command -v code) ] && [ $(command -v code-insiders) ]; then
  # Link `code` to be the same as `code-insiders`:
  ln -s "$(which code-insiders)" "$(dirname "$(which code-insiders)")/code"
  echo 'Linked `code-insiders` to be accessible as `code`'
fi

# Install plugins:
sh 'vscode/plugins.sh'
