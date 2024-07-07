#!/usr/bin/env bash

buildroot="$(mktemp -d)"

# Make sure we can even build packages on arch linux
sudo pacman -S --needed --noconfirm base-devel git

mkdir -p "$buildroot"
cd "$buildroot" || exit 1

git clone https://aur.archlinux.org/yay.git
cd "${buildroot}/yay" || exit 1
makepkg --syncdeps --install --noconfirm

cd "$HOME" || exit 1
rm -rf "$buildroot"