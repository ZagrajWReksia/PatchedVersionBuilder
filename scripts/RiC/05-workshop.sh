#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/ric-workshop-0.5.2.zip" 'https://github.com/roostarreksio/ric-workshop/releases/download/0.5.2/ric-workshop-0.5.2.zip' || echo "Already downloaded"
zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" "$CACHE_DIR/ric-workshop-0.5.2.zip"
