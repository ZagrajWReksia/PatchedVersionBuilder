#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiWC.iso" "https://iso.zagrajwreksia.pl/RiWC/Reksio%20i%20Wehikul%20Czasu.iso" || echo "Already downloaded"
"$COMMON_SCRIPTS_DIR/iso-to-zip.sh" "$CACHE_DIR/RiWC.iso" "$TARGET_ZIP"
