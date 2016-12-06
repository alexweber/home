#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='subl'
export VISUAL='subl'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  "${ZDOTDIR:-$HOME}/bin"
  "${ZDOTDIR:-$HOME}/.composer/vendor/bin"
  /Applications/MAMP/Library/bin
  "${ZDOTDIR:-$HOME}/Developer/gsutil"
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

#
# Other exports
#

# Homebrew Cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# NVM.
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

# Drupal.
#export PATH=/Applications/MAMP/bin/php/php5.3.29/bin:$PATH
#export DRUSH_PHP=/Applications/MAMP/bin/php/php5.3.29/bin/php

export PATH=/Applications/MAMP/bin/php/php5.6.10/bin:$PATH
export DRUSH_PHP=/Applications/MAMP/bin/php/php5.6.10/bin/php

# Android Dev
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/usr/local/opt/android-sdk

# Keep a reasonably long history.
export HISTSIZE=4096;
# export HISTSIZE=8192;

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
export HISTFILESIZE=16384;
# export HISTFILESIZE=32768;

# When executing the same command twice or more in a row, only store it once.
# export HISTCONTROL=ignoredups;
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Make some commands not show up in history.
export HISTIGNORE="ls:cd:cd:ll:ls:la:history -:pwd:exit:date:* --help";

# Make new shells get the history lines from all previous shells instead of the
# default "last window closed" history.
# export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
