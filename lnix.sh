#!/bin/bash

src="$HOME/.nix-profile/share/applications"
dst="$HOME/.local/share/applications"

# Loop over files in source directory
for file in "$src"/*; do
  base=$(basename "$file")
  link="$dst/$base"
  # If the link doesn't exist, create a symlink
  if [ ! -e "$link" ]; then
    ln -s "$file" "$link"
    echo "Linked $file -> $link"
  fi
done


