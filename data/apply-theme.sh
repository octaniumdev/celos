#!/bin/bash
if [ ! -f "$HOME/.apply-theme-run" ]; then
  gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
  gsettings set org.gnome.desktop.wm.preferences button-layout ':minimize,maximize,close'
  gnome-extensions enable ubuntu-appindicators@ubuntu.com
  touch "$HOME/.apply-theme-run"
fi
