#!/bin/sh
#
# Installs atom packages from pacakges.txt and updates them
# Use apm list --installed --bare > $ZSH/atom.symlink.pacakges.txt
# to update your package list
#

# Check for apm
if test ! $(which apm)
then
  echo "  Installing atom packages"

  if ! [ -f $zsh/atom.symlink/packages.txt]
  then
    apm install --packages-file $zsh/atom.symlink/packages.txt && apm update --no-confirm
  fi

fi

exit 0
