# prasanth krishnan's dotfiles

Your dotfiles are how you personalize your system. These are mine.

This project is forked from [holman does dotfiles](https://github.com/holman/dotfiles). I have personalized them to my liking and added few plugins & automations. If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read holman's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put files in there. Anything with an extension of `.zsh` will get automatically included into your shell. Anything with an extension of `.symlink` will get symlinked without extension into `$HOME` when you run `script/bootstrap`. Similarly an extension of `.configsymlink` will get symlinked to `$HOME/.config`.

## what's inside

A lot of stuff. Check them out. [Fork it](https://github.com/prasanthkrishnan/dotfiles/fork), remove what you don't use, and build on what you do use.
To name a few,
- [Powerline](https://powerline.readthedocs.io/en/latest/): awesome python based zsh prompt, tmux & vim status bar.
- Zsh plugins :  [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions), [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), [zsh-navigation-tools](https://github.com/psprint/zsh-navigation-tools),
[zsh-completions](https://github.com/zsh-users/zsh-completions)


## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.configsymlink**: Any files ending in `*.configsymlink` get symlinked into your `$HOME/.config`.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
git clone https://github.com/prasanthkrishnan/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Thanks

I forked [Zach Holman](https://github.com/holman)' excellent
[dotfiles](http://github.com/ryanb/dotfiles). This repository is just my personalization over his project.
