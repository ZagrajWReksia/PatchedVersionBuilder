#!/bin/bash
set -e

version="0.3.0"

wget -nc -O "$CACHE_DIR/ric-workshop-$version.zip" "https://github.com/ZagrajWReksia/ric-workshop/releases/download/$version/ric-workshop-$version.zip" || echo "Already downloaded"
zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" "$CACHE_DIR/ric-workshop-$version.zip"
