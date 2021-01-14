#!/usr/bin/env bash

set -o errexit
set -o nounset

# This file is dedicated to installing
# stuff for codespaces only.
# It is not executed on any other platform.

if [ ! "$CODESPACES" = 'true' ]; then
  echo 'Not running inside a Codespace, skipping.'
  exit 0
fi


# Common utils
# ============

if [ "${EUID:-${UID}}" = 0 ]; then
  run_as=''  # root
else
  run_as='sudo'  # non-root
fi


# Brew
# ====

if [ ! $(command -v brew) ]; then
  echo 'Installing Homebrew'
  set -x

  # Install brew deps:
  DEBIAN_FRONTEND=noninteractive $run_as apt-get update \
    && $run_as apt-get install -y \
      build-essential curl procps sudo man

  # Create an installation dir:
  HOMEBREW_PREFIX="$HOME/.linuxbrew"
  mkdir -p "$HOMEBREW_PREFIX"
  cd "$HOMEBREW_PREFIX"

  # Install brew:
  git clone --depth=1 'https://github.com/Homebrew/brew' "$HOMEBREW_PREFIX/Homebrew"
  mkdir -p "$HOMEBREW_PREFIX/bin"
  ln -s "$HOMEBREW_PREFIX/Homebrew/bin/brew" "$HOMEBREW_PREFIX/bin/brew"

  set +x
  eval $("$HOMEBREW_PREFIX"/bin/brew shellenv)
  cd -
fi

echo 'Homebrew is installed!'
