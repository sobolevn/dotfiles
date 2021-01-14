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

# Create a new user:
adduser --disabled-password --gecos '' linuxbrew
adduser linuxbrew sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Create an installation dir:
HOMEBREW_PREFIX='/home/linuxbrew/.linuxbrew'
mkdir -p "$HOMEBREW_PREFIX"
chown linuxbrew:sudo "$HOMEBREW_PREFIX"

set +x

# Install brew:
cd "$HOMEBREW_PREFIX"
su - linuxbrew \
  -w 'HOMEBREW_PREFIX' \
  -c 'bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null'
cd -

echo 'Done!'
