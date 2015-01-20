# Home (aka: Alex's dotfiles)

These are my dotfiles. There are many like them, but these ones are mine.

## Usage

* Clone this repo somewhere: `git clone https://github.com/alexweber/home.git ~/Projects/home`
* To install run `./dotfiles.sh`
* To update the dotfiles run `git pull && ./dotfiles.sh`
* Alternatively, if you're setting up a fresh OS X install, use the `home.sh` script, which will set everything up and run all of the other scripts for you

## Customization

* In order to keep private info from public repos, use the `.bash/private` file; it's only copied by the `dotfiles.sh` script if it doesn't already exist
* It's also a place you can add extra private aliases, functions, etc.
* If you're maintaining a fork, run `git update-index --assume-unchanged` on this file in order to ignore the it's changes

## Additional scripts

* `osx.sh` Sets up sensible defaults for OS X settings and a couple other cool tweaks
* `brew.sh` Install command-line tools using Homebrew
* `cask.sh` Install native OS X apps using Homebrew Cask
* `node.sh` Install Node.js packages globally
* `composer.sh` Install Composer packages globally
* `atom.sh` Install Atom Editor packages
* `home.sh` __Wrapper around the all of the other scripts; use this to set up a new Mac__

## Caveats
* `osx.sh` assumes you have some executables from `brew.sh` and `cask.sh` installed

## Credits

Most of this was based on work by these awesome people:

* Mathias Bynens https://github.com/mathiasbynens/dotfiles
* Jan Moesen https://github.com/janmoesen/tilde
* Paul Irish https://github.com/paulirish/dotfiles
* Gianni Chiappetta https://github.com/gf3/dotfiles/tree/v1.0.0
* Cãtãlin Mariş  https://github.com/alrra/dotfiles
* Nicolas Gallagher  https://github.com/necolas/dotfiles
* Kevin Suttle https://github.com/kevinSuttle/dotfiles
* Ben Alman  https://github.com/cowboy/dotfiles
* Matijs Brinkhuis  https://github.com/matijs/dotfiles
