#!/bin/sh
#
# Installs atom packages from pacakges.txt and updates them
# Use apm list --installed --bare > $ZSH/atom.symlink/pacakges.txt
# to update your package list when u install new packages in atom

# Check for apm
if test $(which apm)
then
  if [ -f $ZSH/atom.symlink/packages.txt ]
  then
    echo "  Installing atom packages"
    apm install --packages-file $ZSH/atom.symlink/packages.txt && apm update --no-confirm
  fi
else
  echo " apm not found, skipping atom packages installation"
fi

exit 0
