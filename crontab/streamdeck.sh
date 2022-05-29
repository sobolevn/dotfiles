#!/usr/bin/env bash

# Script that automatically opens "StreamDeck.app" when StreamDeck is connected.
# It also switches it off, when StreamDeck is disconnected from USB drive.

if ioreg -p IOUSB | grep -q "Stream Deck"; then
  if ! pgrep "Stream Deck"; then
    open -a "Stream Deck.app"
  fi
else
  if pgrep -q "Stream Deck"; then
    killall "Stream Deck"
  fi
fi
