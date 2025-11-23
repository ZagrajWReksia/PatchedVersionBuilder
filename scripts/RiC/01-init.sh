#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiC.iso" "https://iso.zagrajwreksia.pl/RiC/Reksio%20i%20Czarodzieje.iso" || echo "Already downloaded"
"$COMMON_SCRIPTS_DIR/iso-to-zip.sh" "$CACHE_DIR/RiC.iso" "$TARGET_ZIP"
