#!/usr/bin/env bash

set -e -u -o pipefail

PREFIX="$HOME/.graalvm"

# get latest version
# see: https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c

URL="https://api.github.com/repos/graalvm/graalvm-ce-builds/releases/latest"
VERSION="$(curl -fsSL "$URL" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' | cut -d- -f2)"

# detect system

if [ $(uname) = Darwin ]; then
    GRAALVM_URL="https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-$VERSION/graalvm-ce-java11-darwin-amd64-$VERSION.tar.gz"

elif [ $(uname) = Linux ]; then
    GRAALVM_URL="https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-$VERSION/graalvm-ce-java11-linux-amd64-$VERSION.tar.gz"

else
    echo "unable to detect system"
    exit 1
fi

# download and install

ARCHIVE="./graalvm.tar.gz"

echo "Downloading GraalVM ($VERSION)..."
curl -fL "$GRAALVM_URL" -o "$ARCHIVE"

echo "Extracting archive..."
rm -rf "$PREFIX"
mkdir -p "$PREFIX"
tar -xzf "$ARCHIVE" --strip-components 1 -C "$PREFIX"
rm "$ARCHIVE"

echo "Remember to run \`xattr -r -d com.apple.quarantine $PREFIX\`"
echo "see: https://github.com/oracle/graal/issues/1724#issuecomment-539503007"

