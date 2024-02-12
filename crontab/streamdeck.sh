#!/usr/bin/env bash

# Script that automatically opens "StreamDeck.app" when StreamDeck is connected.
# It also switches it off, when StreamDeck is disconnected from USB drive.

PROCESS_NAME='Stream Deck'
APP_NAME="Elgato ${PROCESS_NAME}.app"

if ioreg -p IOUSB | grep -q "$PROCESS_NAME"; then
  if ! pgrep "$PROCESS_NAME"; then
    open -g -a "$APP_NAME"
  fi
else
  # Let it open for now
  # if pgrep -q "$PROCESS_NAME"; then
  #   killall "$PROCESS_NAME"
  # fi
fi
