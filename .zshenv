#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# NVM.
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Drupal 7.
export PATH=/Applications/MAMP/bin/php/php5.3.29/bin:$PATH
export DRUSH_PHP=/Applications/MAMP/bin/php/php5.3.29/bin/php

# Drupal 8.
#export PATH=/Applications/MAMP/bin/php/php5.4.33/bin:$PATH
#export DRUSH_PHP=/Applications/MAMP/bin/php/php5.4.33/bin/php

# Use Sublime Text as default editor.
export EDITOR='subl';

# Android Dev
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/usr/local/opt/android-sdk

# Always enable colored `grep` output.
export GREP_OPTIONS="--color=auto";

# Keep a reasonably long history.
# export HISTSIZE=4096;
export HISTSIZE=8192;

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
# export HISTFILESIZE=16384;
export HISTFILESIZE=32768;

# When executing the same command twice or more in a row, only store it once.
# export HISTCONTROL=ignoredups;
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Make some commands not show up in history.
export HISTIGNORE="ls:cd:cd:ll:ls:la:history -:pwd:exit:date:* --help";

# Make new shells get the history lines from all previous shells instead of the
# default "last window closed" history.
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Docker.
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH="$HOME/.boot2docker/certs/boot2docker-vm"

# Enable tab completion for `g` by marking it as an alias for `git`.
# if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
#   complete -o default -o nospace -F _git g;
# fi;

# If we have found drush.complete.sh, then source it.
# if [ -f "$HOME/.composer/vendor/drush/drush/drush.complete.sh" ] ; then
#   source "$HOME/.composer/vendor/drush/drush/drush.complete.sh"
# fi

# BTSH.
source "$HOME/Bluetent/btsh/btsh.plugin.zsh"
