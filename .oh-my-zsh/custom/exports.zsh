export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# Private bin.
export PATH=/Users/alex/bin:$PATH

# MAMP.
export PATH=/Applications/MAMP/Library/bin:$PATH

# Composer.
export PATH=/Users/alex/.composer/vendor/bin:$PATH

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

# Make less the default pager, and specify some useful defaults.
less_options=(
  # If the entire text fits on one screen, just show it and quit. (Be more
  # like "cat" and less like "more".)
  --quit-if-one-screen

  # Do not clear the screen first.
  --no-init

  # Like "smartcase" in Vim: ignore case unless the search pattern is mixed.
  --ignore-case

  # Do not automatically wrap long lines.
  --chop-long-lines

  # Allow ANSI colour escapes, but no other escapes.
  --RAW-CONTROL-CHARS

  # Do not ring the bell when trying to scroll past the end of the buffer.
  --quiet

  # Do not complain when we are on a dumb terminal.
  --dumb
);
export LESS="${less_options[*]}";
unset less_options;
export PAGER='less';

# Don’t clear the screen after quitting a manual page.
export MANPAGER="less -X";

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Always enable colored `grep` output.
export GREP_OPTIONS="--color=auto";

# Prefer US English and use UTF-8.
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";

# Keep a reasonably long history.
# export HISTSIZE=4096;
# Keep a super long history.
export HISTSIZE=32768;

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
# export HISTFILESIZE=16384;
export HISTFILESIZE=65536;

# When executing the same command twice or more in a row, only store it once.
# export HISTCONTROL=ignoredups;
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Keep track of the time the commands were executed.
# The xterm colour escapes require special care when piping; e.g. "| less -R".
export HISTTIMEFORMAT="${FG_BLUE}${FONT_BOLD}%Y/%m/%d %H:%M:%S${FONT_RESET}  ";

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
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  complete -o default -o nospace -F _git g;
fi;

# If we have found drush.complete.sh, then source it.
# if [ -f "$HOME/.composer/vendor/drush/drush/drush.complete.sh" ] ; then
#   source "$HOME/.composer/vendor/drush/drush/drush.complete.sh"
# fi

# BTSH.
source "$HOME/Bluetent/btsh/btsh.plugin.zsh"
