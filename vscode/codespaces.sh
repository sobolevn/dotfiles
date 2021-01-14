#!/usr/bin/env sh

# This file is dedicated to installing
# stuff for codespaces only.
# It is not executed on any other platform.

if [ ! "$CODESPACES" = 'true' ]; then
  echo 'Not running inside a Codespace, skipping.'
  exit 0
fi


# Brew
# ====

# Create a new user:
adduser --disabled-password --gecos '' linuxbrew
adduser linuxbrew sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Create an installation dir:
PREFIX='/home/linuxbrew/.linuxbrew'
mkdir -p "$PREFIX"
chown linuxbrew:sudo "$PREFIX"

# Install brew deps:
apt-get install -y build-essential curl procps sudo

# Install brew:
su -m linuxbrew -c 'HOMEBREW_PREFIX=/home/linuxbrew/.linuxbrew bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
