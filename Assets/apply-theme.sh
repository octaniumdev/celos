#!/bin/bash
if [ ! -f "$HOME/.apply-theme-run" ]; then
  gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
  touch "$HOME/.apply-theme-run"
fi
