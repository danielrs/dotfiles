fish_config theme choose "catppuccin-frappe" --color-theme=light

# --------------------------------
# Exports
# --------------------------------

set -x VISUAL "vim"

# --------------------------------
# PATH configuration
# --------------------------------
# NOTE: we are using prepend (last added = first on list)

path_prepend "$HOME/.local/bin"
