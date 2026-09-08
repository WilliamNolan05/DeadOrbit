#!/usr/bin/env bash
# install.sh — deploy DeadOrbit onto a fresh Arch Linux install
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "==> Updating system"
sudo pacman -Syu --noconfirm

echo "==> Installing official packages"
sudo pacman -S --needed --noconfirm - < "$REPO_DIR/pkglist.txt"

echo "==> Checking for an AUR helper (yay)"
if ! command -v yay &>/dev/null; then
  echo "yay not found, building it"
  sudo pacman -S --needed --noconfirm base-devel git
  tmpdir=$(mktemp -d)
  git clone https://aur.archlinux.org/yay.git "$tmpdir/yay"
  (cd "$tmpdir/yay" && makepkg -si --noconfirm)
  rm -rf "$tmpdir"
fi

echo "==> Installing AUR packages"
yay -S --needed --noconfirm - < "$REPO_DIR/aurpkglist.txt"

echo "==> Copying configs into place"
cp -r "$REPO_DIR/.config/." "$HOME/.config/"

echo "==> Done. Reboot and select Hyprland at your display manager."
