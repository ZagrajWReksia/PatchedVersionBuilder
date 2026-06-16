#!/bin/bash

wget -nc -O "$CACHE_DIR/rcedit.exe" "https://github.com/electron/rcedit/releases/download/v2.0.0/rcedit-x64.exe" || echo "Already downloaded"

unzip -j -o "$TARGET_ZIP" Wehikul.exe -d "$TMP_DIR"
wine "$CACHE_DIR/rcedit.exe" "$TMP_DIR/Wehikul.exe" --application-manifest ./files/Wehikul.exe.manifest
zip -j "$TARGET_ZIP" "$TMP_DIR/Wehikul.exe"
