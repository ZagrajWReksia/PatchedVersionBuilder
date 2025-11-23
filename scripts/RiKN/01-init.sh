#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiKN.iso" "https://iso.zagrajwreksia.pl/RiKN/installed-game-base.zip" || echo "Already downloaded"
cp "$CACHE_DIR/RiKN.iso" "$TARGET_ZIP"
