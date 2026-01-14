#!/usr/bin/env bash
set -e

GAME="$1"
BUCKET_NAME="$2"

zip_filename="build/dist/$GAME-Patched.zip"
if [[ -f "$zip_filename" ]]; then
    echo "Uploading: $zip_filename"
    sh build.sh "$GAME"
    b2-linux file upload "$BUCKET_NAME" "$zip_filename" "$GAME/$GAME-Patched.zip"
fi
