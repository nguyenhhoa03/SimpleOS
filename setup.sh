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
reboot


