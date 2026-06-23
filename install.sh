#!/usr/bin/env bash
set -euo pipefail

REPO="a-sajjad72/antigravity-ide-installer"

echo "Installing Antigravity IDE installer..."

tmpfile=$(mktemp)
trap 'rm -f "$tmpfile"' EXIT

curl -fsSL \
    "https://raw.githubusercontent.com/${REPO}/main/update-antigravity-ide" \
    -o "$tmpfile"

sudo install -m 0755 "$tmpfile" /usr/local/bin/update-antigravity-ide

echo
echo "Installer installed successfully."
echo

sudo update-antigravity-ide
