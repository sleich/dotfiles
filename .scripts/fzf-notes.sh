#!/bin/sh
choice="$(find -L $HOME/notes -type f -not \( -path '*/.git/*' -o -path '*.jpg' -o -path '*.png' \) | fzf --height 8)"
if [ $choice ]; then
  $EDITOR $choice
fi