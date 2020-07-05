# --------------------------------
# Exports
# --------------------------------

# Default terminal text-editor to use
set -x VISUAL "nvim"
# set -x EDITOR "nvim"

# Golang exports
set -x GOROOT "$HOME/.golang"
set -x GOPATH "$HOME/Development/go"

# n (node version manager)
set -x N_PREFIX "$HOME/.n"

# Android SDK home
set -x ANDROID_HOME "$HOME/.android-sdk"

# Java apps font redering and corrent behaviour in tiling wms.
set -x _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dsun.java2d.xrender=true -Dswing.aatext=true'
set -x _JAVA_AWT_WM_NONREPARENTING 1

# Enables terminal colors in OS X
set -x CLICOLOR 1

# --------------------------------
# PATH configuration
# --------------------------------

# NOTE: we are using prepend (last added = first on list)
prepend_to_path "/usr/local/sbin"
prepend_to_path "/usr/local/bin"
prepend_to_path "/usr/local/opt/python/libexec/bin"
prepend_to_path "$HOME/.local/bin"
prepend_to_path "$HOME/.cabal/bin"
prepend_to_path "$HOME/.cargo/bin"
prepend_to_path "$N_PREFIX/bin"
prepend_to_path "$GOROOT/bin"
prepend_to_path "$GOPATH/bin"
prepend_to_path "$HOME/.miniconda3/bin"
prepend_to_path "$HOME/.nimble/bin"

# --------------------------------
# Other
# --------------------------------

# Base16 Shell
set -x BASE16_SHELL_SET_BACKGROUND false
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

