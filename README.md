# Home (aka: Alex's dotfiles)

These are my dotfiles. There are many like them, but these ones are mine.

![Screenshot of Alex’s shell prompt](http://i.imgur.com/MTLif8c.jpg)

## Usage

* Clone this repo somewhere: `git clone https://github.com/alexweber/home.git ~/Projects/home`
* To install run `./dotfiles.sh`
* To update the dotfiles run `git pull && ./dotfiles.sh`
* Alternatively, if you're setting up a fresh OS X install, use the `scripts/home.sh` script, which will set everything up and run all of the other scripts for you

## Customization

* In order to keep private info from public repos, use the `.bash/private` file; it's only copied by the `dotfiles.sh` script if it doesn't already exist
* It's also a place you can add extra private aliases, functions, etc.
* If you're maintaining a fork, run `git update-index --assume-unchanged` on this file in order to ignore the it's changes

## Additional scripts

The following scripts are available in the "scripts" folder:

* `osx.sh` Sets up sensible defaults for OS X settings and a couple other cool tweaks
* `brew.sh` Install command-line tools using Homebrew
* `cask.sh` Install native OS X apps using Homebrew Cask
* `node.sh` Install Node.js packages globally
* `composer.sh` Install Composer packages globally
* `atom.sh` Install Atom Editor packages
* `pecl.sh` Install PHP extensions
* `mamp.sh` Add PHP extensions to MAMP
* `home.sh` __Wrapper around the all of the other scripts; use this to set up a new Mac__

## Help

* [Bash Alias cheat sheet](BASH.md)
* [Git Alias cheat sheet](GIT.md)

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
