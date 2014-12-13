#!/bin/bash

# Shell options, environment variables and readline settings
# =============================================================================

# Globbing and completion
# -----------------------------------------------------------------------------
# Case-insensitive globbing.
shopt -s nocaseglob;

# Do not autocomplete when accidentally pressing Tab on an empty line. (It takes
# forever and yields "Display all 15 gazillion possibilites?")
shopt -s no_empty_cmd_completion;

# Append to the Bash history file, rather than overwriting it.
shopt -s histappend;

# Autocorrect typos in path names when using `cd`.
shopt -s cdspell;

# Do not overwrite files when redirecting using ">".
# Note that you can still override this with ">|".
#set -o noclobber;

# Prefer English and use UTF-8.
printf -v available_locales ' %s ' $(locale -a);
for lang in en_US en_GB en; do
  for locale in "$lang".{UTF-8,utf8}; do
    if [[ "$available_locales" =~ " $locale " ]]; then
      export LC_ALL="$locale";
      export LANG="$lang";
      break 2;
    fi;
  done;
done;
unset available_locales lang locale;

# History
# -----------------------------------------------------------------------------
# When the command contains an invalid history operation (for instance when
# using an unescaped "!" (I get that a lot in quick e-mails and commit
# messages) or a failed substitution (e.g. "^foo^bar" when there was no "foo"
# in the previous command line), do not throw away the command line, but let me
# correct it.
shopt -s histreedit;

# Keep a reasonably long history.
export HISTSIZE=4096;

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
export HISTFILESIZE=16384;

# When executing the same command twice or more in a row, only store it once.
export HISTCONTROL=ignoredups;

# Keep track of the time the commands were executed.
# The xterm colour escapes require special care when piping; e.g. "| less -R".
export HISTTIMEFORMAT="${FG_BLUE}${FONT_BOLD}%Y/%m/%d %H:%M:%S${FONT_RESET}  ";

# Screen sessions
# -----------------------------------------------------------------------------
# Enable SSH agent forwarding ("ForwardAgent yes"/"ssh -A") with persistent
# screen sessions.
if [ "$TERM" != 'screen' ]; then
  # Persist the variable so we can source it in existing sessions.
  if [ -n "$SSH_AUTH_SOCK" ]; then
    if [ ! -d ~/.ssh ]; then
      mkdir -p ~/.ssh;
      chmod 700 ~/.ssh;
    fi;
    printf 'export SSH_AUTH_SOCK=%q\n' "$SSH_AUTH_SOCK" >| ~/.ssh/environment.screen;
  fi;
else
  # Re-read the variable after each command. This may seem like overkill,
  # but the screen session could have been detached and then reattached from
  # another SSH session, so you never know when the SSH authentication
  # socket might have changed.
  export PROMPT_COMMAND="
  ret=\$?;
  [ -f ~/.ssh/environment.screen ] && source ~/.ssh/environment.screen;
  function __return { unset __return; return \$1; }
  __return \$ret;
  ${PROMPT_COMMAND:-}
  ";
fi;
