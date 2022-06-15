#!/bin/sh
# Post install script for arch linux
# Checks for update and updates
yes y | pacman -Syu

pacman -S git reflector chromium xorg-server xorg-xauth xorg-xinerama xorg-xft xorg-xrandr xf86-video-amdgpu nitrogen feh ranger polybar

git clone https://aur.archlinux.org/yay-git.git

cd yay-git
yes y | makepgk -si

