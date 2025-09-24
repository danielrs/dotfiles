#!/usr/bin/env sh
# Install Catppuccin themes.
# See: https://catppuccin.com/
set -e -u -o pipefail

function download_theme {
  output_dir=$1
  base_url=$2
  file=$3
  urlencoded=$(echo $file | sed 's/ /%20/g')
  echo "Downloading $base_url/$urlencoded" | tr -s '/'
  curl -L --fail --output-dir "$output_dir" --output "$file" "$base_url/$urlencoded"
}

# Alacritty
# See: https://github.com/catppuccin/alacritty

OUTPUT_DIR="$HOME/.config/alacritty/themes/"
BASE_URL="https://github.com/catppuccin/alacritty/raw/main"
mkdir -p "$OUTPUT_DIR"
download_theme "$OUTPUT_DIR" "$BASE_URL" "catppuccin-frappe.toml"
download_theme "$OUTPUT_DIR" "$BASE_URL" "catppuccin-latte.toml"
download_theme "$OUTPUT_DIR" "$BASE_URL" "catppuccin-macchiato.toml"
download_theme "$OUTPUT_DIR" "$BASE_URL" "catppuccin-mocha.toml"

# Fish
# See: https://github.com/catppuccin/fish

OUTPUT_DIR="$HOME/.config/fish/themes/"
BASE_URL="https://github.com/catppuccin/fish/raw/main/themes"
mkdir -p "$OUTPUT_DIR"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Frappe.theme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Latte.theme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Macchiato.theme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Mocha.theme"

# Zellij
# Already included.
