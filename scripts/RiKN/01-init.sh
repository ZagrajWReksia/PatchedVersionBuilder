#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiKN.iso" "https://iso.zagrajwreksia.pl/RiKN/installed-game-base.zip" || echo "Already downloaded"
"$COMMON_SCRIPTS_DIR/iso-to-zip.sh" "$CACHE_DIR/RiKN.iso" "$TARGET_ZIP"
