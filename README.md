# CelOS - A powerful OS with minimal design
https://celos.cob-web.dev

CelOS is an Ubuntu-based Linux distribution with Flatpak at its heart. It's a powerful OS with minimal design

`CelOS 1 [Beta v1.2]`

Last ISO release: 10th March 2021

# How to recreate CelOS & Our package list

Free and open source software is at the heart of Cob:web Development, and so we are going to ensure that all of the packages, scripts and tools provided pre and post installation are open source, free and findable. CelOS is licensed under the MIT license so you can copy, re-create, redistribute and contribute to CelOS!

## Based on Ubuntu (20.04 LTS)

CelOS, at it's fundementals, is very heavily based on Ubuntu, we will be using a large majority of Ubuntu's packages unless we have specified whether or not we have removed, replaced, modified or added new packages (and their dependancies).

## Kernel 5.8.0-44-generic

We are using the same Kernel that Ubuntu 20.04 LTS uses. People on older builds can still receive Kernel updates through upstream and so we will try to ensure that this is kept up-to-date.

## Repositories added (Apt):
Added universe

## (Apt) Packages that we have modified (**), removed (-) or added (+) - Including dependancies

Removed aisleriot

Removed gnome-mahjongg

Removed gnome-mines

Removed gnome-sudoku

Removed evince

Removed libreoffice

Removed rhythmbox

Removed remmina

Removed shotwell

Removed thunderbird

Removed totem

Removed snapd

Removed firefox

Removed gedit

Removed cheese

Removed gnome-calculator

Removed gnome-calendar

Removed gnome-font-viewer

Removed gnome-characters

Added gnome-tweak-tool

Added Flatpak

Modified gnome-shell-extensions [Installed via script: apt-get install $(apt search gnome-shell-extension | grep ^gnome | cut -d / -f1)]

## Repositories added (Flatpak):
Added Flathub

## Flatpak Packages that we have modified (**), removed (-) or added (+) - Including dependancies

Added Firefox

Added Gedit

Added Cheese

Added gnome-calculator

Added gnome-clocks

Added gnome-calendar

Added gnome-photos

Added gnome-characters

Added gnome-font-viewer

Added gnome-contacts

## Scripts

/etc/skel/ is a directory where items will be placed in your "home" directory post install
/etc/profile.d/ is a directory where scripts are ran on login

fetch.sh -> /etc/skel

.bashrc -> /etc/skel

apply-theme.sh -> /etc/profile.d/

## Wallpapers:
Wallpapers have been placed in both /usr/share/backgrounds and ~/Pictures/

You can find the folder for our Wallpapers in the repository.

## Themes

GTK theme: Adwaita Dark,
https://gitlab.gnome.org/GNOME/gtk/tree/master/gtk/theme/Adwaita

Shell theme: Adwaita Shell (modified for our Dash-to-dock extension)

You can find our modified Adwaita Shell theme in our repositories.

## Icons:

We are using the "fluent" icon theme
https://www.gnome-look.org/p/1477945/

## Others

We have modified the file in "/usr/share/glib-2.0/schemas/10-ubuntu-settings.gschema.override" in order for our Fluent icons, Wallpaper, and Adwaita-dark theme to apply by default.

The Grub has been modified to say "CelOS 1"

/etc/os-release has been modified.

## How can I re-create CelOS 1? 

If you are on an Ubuntu-based distribution we can recommend Cubic as a live-ISO editor, and what we are currently using to create the distribution via a chroot environment.
https://launchpad.net/cubic

# Made with love by Cob:web Development and our Open source contributors:

Adam Salt - Lead Developer

Jaiden Collins - Website Developer

Website link: https://github.com/cobwebdev/celos-website

### Please join the Cob:web Development discord to talk to us and contribute to our projects: https://cob-web.dev/discord
