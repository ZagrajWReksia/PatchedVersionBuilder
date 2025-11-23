#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/cnc-ddraw-experimental-release.zip" "https://github.com/FunkyFr3sh/cnc-ddraw/releases/download/experimental/cnc-ddraw-experimental-release.zip" || echo "Already downloaded"
zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" "$CACHE_DIR/cnc-ddraw-experimental-release.zip"
zip -j "$TARGET_ZIP" "$COMMON_DIR/ddraw.ini"
