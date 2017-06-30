#!/usr/bin/env bash

# global:
PATH="/usr/local/bin:$PATH"

# Python:
# export PYTHONPATH=`brew --prefix`/lib/python2.7/site-packages:$PYTHONPATH

# PHP:
PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# npm:
PATH="/usr/local/share/npm/bin:$PATH"

# Should be the last line:
PATH="/usr/local/sbin:$PATH"
export PATH

source ~/.shell_env
