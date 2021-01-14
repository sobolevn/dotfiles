#!/usr/bin/env sh

set -o errexit
set -o nounset

if [ ! $(command -v code) ] && [ $(command -v code-insiders) ]; then
  # Link `code` to be the same as `code-insiders`:
  ln -s "$(which code-insiders)" "$(dirname "$(which code-insiders)")/code"
fi

# Install plugins:
eval 'vscode/plugins.sh'
