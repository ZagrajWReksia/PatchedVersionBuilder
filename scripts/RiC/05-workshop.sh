#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/ric-workshop-0.1.0.zip" 'https://github.com/ZagrajWReksia/ric-workshop/releases/download/0.1.0/ric-workshop-0.1.0.zip' || echo "Already downloaded"
zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" "$CACHE_DIR/ric-workshop-0.1.0.zip"
