<center><img src="https://celos.cobweb-aclevo.org/assets/CelOS.png" width="20%" height="20%"></center>

# CelOS - A simple, easy-to-use, flatpak centric Linux distribution for everyone.
https://celos.cobweb-aclevo.org

CelOS is a simple, easy-to-use, flatpak centric Linux distribution for everyone based on Ubuntu 20.04

# CelOS 1

Last ISO release: xx September 2021

Free and open source software is at the heart of Cob:web-Aclevo, and so we are going to ensure that all of the packages, scripts and tools provided pre and post installation are open source, free and findable. CelOS is licensed under the GPL3 license so you can copy, re-create, redistribute and contribute to CelOS!

# What CelOS is built on

CelOS is fundamentally a flavor of Ubuntu. It is provided with the Ubuntu upstream repos and currently doesn't use any third-party repository. It provides and follows upstream software versions, including the kernel.
CelOS is currently based on Ubuntu 20.04.X which is the current LTS version. The latest build is based on Ubuntu 20.04.FIXME, which ships kernel 5.FIXME.

## Details of changes from upstream
### Packages
- Ubuntu universe repository added.
- apt packages **removed** : aisleriot, gnome-mahjongg, gnome-mines, gnome-sudoku, evince, libreoffice, rhythmbox, remmina, shotwell, thunderbird, totem, snapd, firefox, gedit, cheese, gnome-calculator, gnome-calendar, gnome-font-viewer, gnome-characters, ubuntu-session
- apt packages **added** : gnome-tweak-tool, gnome-software, gnome-software-plugin-flatpak, Flatpak, gnome-session
- flatpak repositories added : flathub
- flatpak packages **added**, along with their dependencies : org.gtk.Gtk3theme.Adwaita-dark, org.gnome.Epiphany, org.gnome.gedit, org.gnome.Cheese, org.gnome.Calculator, org.gnome.clocks, org.gnome.Calendar, org.gnome.Photos, org.gnome.Characters, org.gnome.font-viewer, org.gnome.Contacts, org.gnome.Weather, com.github.tchx84.Flatseal

### Configuration and data files
Configuration, branding and other data files can be found in this repository and are added manually when building an image. A package will later be used for this purpose.

***FIXME***

Add the universe repository, remove and add necessaery packages

We are using the default GTK and Shell theme for GNOME, "Adwaita"

We are using the "Adwaita icon theme" icon theme

Original theme: https://www.gnome-look.org/p/1000034/

Once this theme has been placed in /usr/share/plymouth you need to run some commands to update initramfs;


https://github.com/Cobweb-Development/celos/tree/main/Assets/ubiquity-slideshow - /usr/share/ubiquity-slideshow/

We have modified the file in "/usr/share/glib-2.0/schemas/10-ubuntu-settings.gschema.override" in order for our Adwaita Icons, Wallpaper, and Adwaita-dark shell theme to apply by default.

The Grub has been modified to say "CelOS 1 GNU/Linux", the "grub" folder in "Assets" has two files related to modifying grub.

Along with this ubuntu.seed and grub.cfg were edited in the "seed" and "grub" pages of the Cubic editor.

The plymouth theme and GDM logo have been modified

/etc/os-release and /etc/lsb-release has been modified.

GDM was modified by using the default theme, to change it run `update-alternatives --config gdm3-theme.gresource`

```
update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/weyll-logo/weyll-logo.plymouth 200
update-alternatives --set default.plymouth /usr/share/plymouth/themes/weyll-logo/weyll-logo.plymouth
update-initramfs -u
update-grub
apt update && apt upgrade
```
***/FIXME***

## Building a CelOS image

CelOS images are built by modifying an Ubuntu image using Cubic.

### Set up Cubic
To use Cubic to build CelOS, you'll need a computer or virtual machine running a recent version of Ubuntu with a graphical environment. Follow the instructions on [Cubic's homepage](https://launchpad.net/cubic) to set it up.

### Base Ubuntu image
Download [ubuntu-20.04.3-desktop-amd64.iso](https://releases.ubuntu.com/20.04.3/ubuntu-20.04.3-desktop-amd64.iso) \([torrent](http://releases.ubuntu.com/focal/ubuntu-20.04.3-desktop-amd64.iso.torrent)). This will be used as the base image for CelOS.

***FIXME/***

### Copying files

```
celos/config/.bashrc -> /etc/skel/
celos/config/gnome-initial-setup-done -> /etc/skel/.config
celos/config/grub/grub -> /etc/default/grub/
celos/config/grub/custom.cfg -> /boot/grub/
celos/data/ubiquity-slideshow/* -> /usr/share/ubiquity-slideshow/
celos/data/weyll-logo -> /usr/share/plymouth/themes/
celos/data/apply-theme.sh -> /etc/profile.d/
celos/artwork/wallpapers/* -> /usr/share/backgrounds/celos/
celos/artwork/wallpapers/* /etc/skel/Pictures/

```


***FIXME/***

# Made with love by Cob:web-Aclevo and our Open source contributors:

***FIXME: Use all-contributors?***

[whyAdamSalt](https://github.com/whyAdamSalt) - Lead Developer

Rany2 (GitHub) - Contributing a bug fix so that /etc/profile.d/ does not require 777 permissions

! NOT-Guillem#8042 (Discord) - Contributing 2 wallpapers

### Please join the Cob:web-Aclevo discord to talk to us and contribute to our projects: https://discord.gg/z3GXvGtuek <a id="discord"></a>

# Screenshots: <a id="screenshot"></a>
- Screenshots are from CelOS 1-beta5

<center><img src="Screenshots/1.png"></center>

- Default login screen for CelOS 1

<center><img src="Screenshots/2.png"></center>

- CelOS with Dark theme (default) + Default wallpaper

<center><img src="Screenshots/3.png"></center>

- CelOS activities overview + Default wallpaper

<center><img src="Screenshots/4.png"></center>

- CelOS with Light theme + Alternate wallpaper

<center><img src="Screenshots/5.png"></center>

- CelOS activities overview + Alternate wallpaper
