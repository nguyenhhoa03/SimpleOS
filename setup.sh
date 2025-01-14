#!/bin/bash

# Create Ubuntu with purge Gnome DE
apt update -y
apt upgrade -y
apt remove ubuntu-desktop ubuntu-session -y
apt autoremove -y
apt install gnome-session gdm3 gnome-terminal -y

# Remove Ubuntu default apps
apt remove --purge libreoffice* -y
apt autoremove -y

# Install new apps
apt install flatpak
apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#reboot

# Productivity apps
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub org.onlyoffice.desktopeditors

# Design apps
flatpak install flathub page.kramo.Sly

# Media apps
flatpak install flathub org.videolan.VLC
flatpak install flathub org.gnome.NetworkDisplays

# Development apps
flatpak install flathub org.kde.kate

# Gaming apps
flatpak install flathub net.lutris.Lutris

# Education apps
flatpak install flathub org.stellarium.Stellarium
flatpak install flathub org.geogebra.GeoGebra

# System apps
flatpak install flathub com.mattjakeman.ExtensionManager
