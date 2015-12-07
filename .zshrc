#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Laziness FTW.
alias a="atom"
alias g="git"
alias h="history"
alias s="subl"
alias d="drush"
alias dm="docker-machine"

# TMUX
alias tma='tmux attach -d -t'
alias tmn='tmux new -s $(basename $(pwd))'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'

# Drush.
alias dun="drush pm-uninstall --yes"
alias dup="drush updatedb --yes"

# PHP Code Sniffer for Drupal.
alias codercs="phpcs --standard=~/.composer/vendor/drupal/coder/coder_sniffer/Drupal/ --extensions=php,module,inc,install,test,profile,theme --encoding=utf-8 --colors"

# Run simpletest from the terminal in a Drupal 7 site root.
alias simpletest="php scripts/run-tests.sh --color --verbose"

# Typos begone.
alias druhs="drush"
alias drsuh="drush"

# List only directories.
alias lsd='ls -l | grep "^d"'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Open with Photoshop.
alias photoshop='open -a "Adobe Photoshop CS6"'

# Open Chrome Canary with web security disabled to overcome CORS issues for local dev.
alias corsdev="open -n -a /opt/homebrew-cask/Caskroom/google-chrome-canary/latest/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --args --disable-web-security"

# Currency conversions.
alias usd="cconv 1 usd brl"
alias eur="cconv 1 eur brl"

# Create a new MySQL database.
alias mc="mysql-create"

# Truncate a MySQL database.
alias mr="mysql-reset"

# Start Mailcatcher ("catch mail").
alias cm="mailcatcher --smtp-port 30000"


#
# Functions
#

## Create a new directory and enter it.
function mkd() {
  mkdir -p "$@" && cd "$_";
}

## Create a new directory, enter it and clone a repo there.
function gi() {
  mkdir -p "$1" && cd "$1";
  git clone "$2" .
}

# `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.
function tre() {
  tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}

# Copy public key,
function pk() {
  pbcopy < ~/.ssh/id_rsa.pub
}

# Convert currencies; cconv {amount} {from} {to}
function cconv() {
  curl -s "http://www.google.com/finance/converter?a=$1&from=$2&to=$3&hl=es" |  sed '/res/!d;s/<[^>]*>//g';
}

# The next line updates PATH for the Google Cloud SDK.
source '~/Developer/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '~/Developer/google-cloud-sdk/completion.zsh.inc'
