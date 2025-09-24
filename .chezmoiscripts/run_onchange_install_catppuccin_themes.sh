#!/usr/bin/env sh
# Install Catppuccin themes.
# See: https://catppuccin.com/
set -e -u -o pipefail

function download_theme {
  set +u
  local output_dir=$1
  local base_url=$2
  local file=$3
  local output_file=$4
  if [ -z "$4" ]; then
    output_file=$file
  fi
  urlencoded=$(echo $file | sed 's/ /%20/g')
  echo "Downloading $base_url/$urlencoded" | tr -s '/'
  curl --no-progress-meter \
    -L --fail --output-dir "$output_dir" --output "$output_file" "$base_url/$urlencoded"
  set -u
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

# Bat
# See: https://github.com/catppuccin/bat

OUTPUT_DIR="$HOME/.config/bat/themes/"
BASE_URL="https://github.com/catppuccin/bat/raw/main/themes"
mkdir -p "$OUTPUT_DIR"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Frappe.tmTheme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Latte.tmTheme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Macchiato.tmTheme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Mocha.tmTheme"
bat cache --build

# Delta
# See: https://github.com/catppuccin/delta

OUTPUT_DIR="$HOME/.config/delta/themes/"
BASE_URL="https://github.com/catppuccin/delta/raw/main"
mkdir -p "$OUTPUT_DIR"
download_theme "$OUTPUT_DIR" "$BASE_URL" "catppuccin.gitconfig"

# Fish
# See: https://github.com/catppuccin/fish
# Note: Latte included as "light" variant in each of the dark themes.

OUTPUT_DIR="$HOME/.config/fish/themes/"
BASE_URL="https://github.com/catppuccin/fish/raw/main/themes"
mkdir -p "$OUTPUT_DIR"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Frappe.theme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Macchiato.theme"
download_theme "$OUTPUT_DIR" "$BASE_URL" "Catppuccin Mocha.theme"

# Zellij
# Already included.
