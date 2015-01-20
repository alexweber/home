# Home (aka: Alex's dotfiles)

These are my dotfiles. There are many like them, but these ones are mine.

## Usage

* Clone this repo somewhere: `git clone https://github.com/alexweber/home.git ~/Projects/home`
* To install on an existing machine, run `./dotfiles.sh`
* To install on a new machine, run `./home.sh`
* To update either installation, go run `git pull && ./dotfiles.sh`

## Customization

* In order to keep private info from public repos, use the `.bash/private` file;
* This file is only copied by the `dotfiles.sh` script if it doesn't already exist
* If you're maintaining a fork, run `git update-index --assume-unchanged` on it in order to ignore the file's changes

## Additional scripts

* `osx.sh` Sets up sensible defaults for OS X settings and a couple other cool tweaks
* `brew.sh` Install command-line tools using Homebrew
* `cask.sh` Install native OS X apps using Homebrew Cask
* `home.sh` Wrapper around the all of the other scripts; use this to set up a new Mac
* `node.sh` Install Node.js packages globally

## Caveats
* `osx.sh` assumes you have some executables from `brew.sh` and `cask.sh` installed
* `node.sh` assumes you have Node installed

## Credits

Most of this was based on work by these awesome people:

* Mathias Bynens https://github.com/mathiasbynens/dotfiles
* Jan Moesen https://github.com/janmoesen/tilde
* Gianni Chiappetta https://github.com/gf3/dotfiles/tree/v1.0.0
* Cãtãlin Mariş  https://github.com/alrra/dotfiles
* Nicolas Gallagher  https://github.com/necolas/dotfiles
* Kevin Suttle https://github.com/kevinSuttle/dotfiles
* Ben Alman  https://github.com/cowboy/dotfiles
* Matijs Brinkhuis  https://github.com/matijs/dotfiles
