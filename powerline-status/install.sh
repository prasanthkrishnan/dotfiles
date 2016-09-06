#!/bin/sh
#
# powerline installation
# Powerline compatable fonts is required. See
# https://powerline.readthedocs.io/en/latest/installation.html#fonts-installation
#
if test $(which pip)
then
  echo " Installing powerline and psutil"
  # ps util is needed for some segments like cpu_percent
  pip install powerline-status --upgrade && pip install psutil --upgrade
else
  echo " pip not found, skipping powerline installation"
fi
