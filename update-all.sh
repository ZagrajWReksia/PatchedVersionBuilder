#!/usr/bin/env bash
set -e

BUCKET_NAME="$1"
games=("RiSP" "RiU" "RiC" "RiWC" "RiKN" "RiKwA")

for game in "${games[@]}"; do
    zip_filename="build/dist/$game-Patched.zip"
    if [[ -f "$zip_filename" ]]; then
        echo "Uploading: $zip_filename"
        sh build.sh "$game"
        b2-linux file upload "$BUCKET_NAME" "$zip_filename" "$game/$game-Patched.zip"
    fi
done
