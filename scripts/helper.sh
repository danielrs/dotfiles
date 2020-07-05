#!/usr/bin/env sh

# Colors
# ----------------
# See: https://stackoverflow.com/a/5947802

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RESET='\033[0m'

runtitle() {
    echo "${BLUE}Run: $@${RESET}"
}

