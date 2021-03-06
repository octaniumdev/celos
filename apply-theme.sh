#!/bin/bash
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gnome-extensions disable desktop-icons@csoriano
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
gnome-extensions enable ubuntu-dock@ubuntu.com
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.user-theme name "Adwaita-shell"
flatpak update -y
rm -rf /etc/profile.d/apply-theme.sh
