# Easier folder navigation.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

# Laziness FTW.
alias g="git"
alias s="subl"
alias d="drush"

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
