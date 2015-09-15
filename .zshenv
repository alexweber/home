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
