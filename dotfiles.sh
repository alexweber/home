#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
  # Copy the ".bash/private" file only if they don't already exist.
  if [ ! -f ~/.bash/private ]; then
    cp .bash/private ~/.bash/private
  fi

  rsync --exclude ".git/" --exclude "scripts/"  --exclude "docs/" --exclude ".bash/private" \
  --exclude "README.md" --exclude "LICENSE"  --exclude "COPYING" -avh --no-perms . ~;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  # Removed the '-n' flag to accept a single char without requiring "Enter" to
  # be pressed because I don't care much for it.
  read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) ";
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
