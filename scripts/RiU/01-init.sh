#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiU.iso" "https://iso.zagrajwreksia.pl/RiU/Reksio%20i%20UFO%20%5Bpiklib8%5D.iso" || echo "Already downloaded"
"$COMMON_SCRIPTS_DIR/iso-to-zip.sh" "$CACHE_DIR/RiU.iso" "$TARGET_ZIP"
