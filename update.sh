#!/bin/bash

set -eux

files=(
  ".vimrc"
  ".zshrc"
  ".config/helix/config.toml"
  ".config/helix/languages.toml"
)

dirs=(
  ".config/ghostty"
)

for f in "${files[@]}"; do
  if [ -f "$HOME/${f}" ]; then
    rsync -av $HOME/${f} $f
  fi
done

for d in "${dirs[@]}"; do
  if [ -d "$HOME/${d}" ]; then
    rsync -av $HOME/${d}/ ./${d}/
  fi
done
