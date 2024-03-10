#!/usr/bin/env bash

set -e

# Brewfile does not support dumping exact versions by default.
# So, here are some exact versions of plugins that I use
# (when I care about the version).
sed -i '' 's/vscode "teabyii.ayu"/vscode "teabyii.ayu@0.20.2"/g' Brewfile

echo 'Brewfile updated'
