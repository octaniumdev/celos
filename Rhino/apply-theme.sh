#!/bin/bash
if [ ! -f "$HOME/.apply-theme-run" ]; then
  gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
  gnome-extensions disable ding@rastersoft.com
  gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
  gnome-extensions enable ubuntu-dock@ubuntu.com
  gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
  gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
  gsettings set org.gnome.shell.extensions.user-theme name "Adwaita-shell"
  flatpak update -y
  touch "$HOME/.apply-theme-run"
fi
