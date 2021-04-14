#!/bin/bash
if [ ! -f "$HOME/.apply-theme-run" ]; then
  gnome-extensions disable desktop-icons@csoriano
  gnome-extensions disable ubuntu-dock@ubuntu.com
  gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
  gsettings set org.gnome.shell.extensions.user-theme name "Adwaita-shell"
  touch "$HOME/.apply-theme-run"
fi
