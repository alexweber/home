#!/usr/bin/env bash

SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";
cd $SOURCE_DIR

git pull origin master;

function doIt() {
  # Copy the ".bash/private" file only if it doesn't already exist.
  if [ ! -f ~/.bash/private ]; then
    cp .bash/private ~/.bash/private
  fi

  # Symlink some config directories.
  symlinked_dirs=(
    .atom
    .drush
    .WebIde80
  );
  for symlinked_dir in "${symlinked_dirs[@]}"; do
    if ! [[ -L "$HOME/$symlinked_dir" && -d "$HOME/$symlinked_dir" ]]; then
      ln -s "$SOURCE_DIR/$symlinked_dir" "$HOME/$symlinked_dir"
      echo "Create symlink from $symlinked_dir to $HOME/$symlinked_dir"
    else
      echo "Link for $symlinked_dir already exists"
    fi
  done;

  rsync --exclude ".atom/" --exclude ".bash/private" --exclude ".drush/" \
  --exclude ".git/" --exclude ".WebIde80/" --exclude "scripts/" \
  --exclude "BASH.md" --exclude "COPYING" --exclude "dotfiles.sh" \
  --exclude "GIT.md" --exclude "LICENSE" --exclude "README.md" \
  -avh --no-perms . ~;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  # Removed the '-n 1' flag to accept a single char without requiring "Enter" to
  # be pressed because I don't care much for it.
  read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) ";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
