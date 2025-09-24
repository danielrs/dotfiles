#!/usr/bin/env sh
# Install Solarized themes.
# See: https://ethanschoonover.com/solarized/
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
# See: https://github.com/alacritty/alacritty-theme

OUTPUT_DIR="$HOME/.config/alacritty/themes/"
BASE_URL="https://github.com/alacritty/alacritty-theme/raw/master/themes"
mkdir -p "$OUTPUT_DIR"
download_theme "$OUTPUT_DIR" "$BASE_URL" "solarized_dark.toml"
download_theme "$OUTPUT_DIR" "$BASE_URL" "solarized_light.toml"

# Bat
# Already included.

# Delta
# TBD.

# Fish
# Already included.

# Zellij
# Already included.
