#!/usr/bin/env sh

set -o errexit
set -o nounset

if [ ! $(command -v code) ] && [ $(command -v code-insiders) ]; then
  # Link `code` to be the same as `code-insiders`:
  ln -s "$(which code-insiders)" "$(dirname "$(which code-insiders)")/code"
fi

# There should be `code` bin at the moment:
if [ ! $(command -v code) ]; then
  echo 'code executable is not found, abort'
  exit 1
fi

# Install plugins:
sh 'vscode/plugins.sh'
