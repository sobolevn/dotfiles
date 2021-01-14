#!/usr/bin/env sh

set -o errexit
set -o nounset

# This file is dedicated to installing
# stuff for codespaces only.
# It is not executed on any other platform.

if [ ! "$CODESPACES" = 'true' ]; then
  echo 'Not running inside a Codespace, skipping.'
  exit 0
fi


# Brew
# ====

set -x

# Install brew deps:
DEBIAN_FRONTEND=noninteractive apt-get install -y \
  build-essential curl procps sudo man

# Create an installation dir:
HOMEBREW_PREFIX="$HOME/.linuxbrew"
mkdir -p "$HOMEBREW_PREFIX"
cd "$HOMEBREW_PREFIX"

set +x

# Install brew:
git clone --depth=1 'https://github.com/Homebrew/brew' "$HOMEBREW_PREFIX/Homebrew"
mkdir -p "$HOMEBREW_PREFIX/bin"
ln -s "$HOMEBREW_PREFIX/Homebrew/bin/brew" "$HOMEBREW_PREFIX/brew"
eval $("$HOMEBREW_PREFIX"/bin/brew shellenv)

cd -

echo 'Done!'
