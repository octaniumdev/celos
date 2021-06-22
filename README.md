<center><img src="https://blogs.cob-web.xyz/images/CelOS.png" width="20%" height="20%"></center>

# CelOS - A simple, easy-to-use, flatpak centric Linux distribution for everyone. 
https://cob-web.xyz/celos/ 

CelOS is a simple, easy-to-use, flatpak centric Linux distribution for everyone based on Ubuntu 20.04 

`CelOS 1 [Beta v2.0]`

Last ISO release: 11th June 2021

# How to recreate CelOS & Our package list

Free and open source software is at the heart of Cob:web Development, and so we are going to ensure that all of the packages, scripts and tools provided pre and post installation are open source, free and findable. CelOS is licensed under the MIT license so you can copy, re-create, redistribute and contribute to CelOS!

## Based on Ubuntu (20.04 LTS)

CelOS, at it's fundementals, is very heavily based on Ubuntu, we will be using a large majority of Ubuntu's packages unless we have specified whether or not we have removed, replaced, modified or added new packages (and their dependancies).

## Kernel 5.8.0-55-generic

We are using the same Kernel that Ubuntu 20.04 LTS uses. People on older builds can still receive Kernel updates through upstream and so we will try to ensure that this is kept up-to-date.

## Repositories added (Apt):
Added universe

## (Apt) Packages that we have modified, removed or added (Dependancies come installed via apt)


### Packages we removed:
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

Removed ubuntu-session

### Packages we added:
Added gnome-tweak-tool

Added gnome-software

Added gnome-software-plugin-flatpak

Added Flatpak

Added gnome-session

### Packages we modified:
Modified gnome-shell-extensions [Installed via script: apt-get install $(apt search gnome-shell-extension | grep ^gnome | cut -d / -f1)]

## Repositories added (Flatpak):
Added Flathub

## Flatpak Packages that we have modified (**), removed (-) or added (+) - Including dependancies

Added Epiphany

Added Gedit

Added Cheese

Added gnome-calculator

Added gnome-clocks

Added gnome-calendar

Added gnome-photos

Added gnome-characters

Added gnome-font-viewer

Added gnome-contacts

Added gnome-weather

Added gnome-clocks

Added Flatseal

## Scripts and files

/etc/skel/ is a directory where items will be placed in your "home" directory post install

fetch.sh -> /etc/skel

.bashrc -> /etc/skel

gnome-initial-setup-done -> /etc/skel/.config/

## Wallpapers:
Wallpapers have been placed in both /usr/share/backgrounds and ~/Pictures/

You can find the folder for our Wallpapers in the repository.

## Themes

We are using the default GTK and Shell theme for GNOME, "Adwaita"
https://gitlab.gnome.org/GNOME/gtk/tree/master/gtk/theme/Adwaita

## Icons:

We are using the "Adwaita icon theme" icon theme
https://gitlab.gnome.org/GNOME/adwaita-icon-theme

## Plymouth Theme

We are using a modified version of the Weyll-logo theme, which can be found on our GitHub

Original theme: https://www.gnome-look.org/p/1000034/

Once this theme has been placed in /usr/share/plymouth you need to run some commands to update initramfs;

```
update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/weyll-logo/weyll-logo.plymouth 200
update-alternatives --set default.plymouth /usr/share/plymouth/themes/weyll-logo/weyll-logo.plymouth
update-initramfs -u
update-grub
apt update && apt upgrade
```

## Ubiquity slideshow

We have modified Ubiquity to display text and images for CelOS rather than Ubuntu. The files we have used are here:

https://github.com/Cobweb-Development/celos/tree/main/Assets/ubiquity-slideshow - /usr/share/ubiquity-slideshow/

`/usr/share/ubuiqity-slideshow/` was given 777 permissions during this stage and removed after we have changed the files within `/usr/share/ubiquity-slideshow/`

## Others

We have modified the file in "/usr/share/glib-2.0/schemas/10-ubuntu-settings.gschema.override" in order for our Adwaita Icons, Wallpaper, and Adwaita-dark shell theme to apply by default.

The Grub has been modified to say "CelOS 1"

The plymouth theme and GDM logo have been modified

/etc/os-release has been modified.

GDM was modified by using the default theme, to change it run `update-alternatives --config gdm3-theme.gresource`

## How can I re-create CelOS 1? 

If you are on an Ubuntu-based distribution we can recommend Cubic as a live-ISO editor, and what we are currently using to create the distribution via a chroot environment.
https://launchpad.net/cubic

# Made with love by Cob:web-Aclevo and our Open source contributors:

Adam Salt - Lead Developer

Jaiden Collins - Former Website Developer

Rany2 (GitHub) - Contributing a bug fix so that /etc/profile.d/ does not require 777 permissions

Website link: https://github.com/cobweb-development/website/

### Please join the Cob:web-Aclevo discord to talk to us and contribute to our projects: https://discord.gg/z3GXvGtuek

# Screenshots:

<center><img src="https://i.imgur.com/uCtvoih.png"></center>

<center><img src="https://i.imgur.com/Zf9cTdZ.png"></center>

<center><img src="https://i.imgur.com/dTtBUZO.png"></center>

<center><img src="https://i.imgur.com/shoSZ4D.png"></center>
- Screenshots are from v1.6.1 Beta

