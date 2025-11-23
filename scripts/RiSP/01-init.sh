#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiSP.iso" "https://iso.zagrajwreksia.pl/RiSP/Reksio%20i%20Skarb%20Pirat%C3%B3w%20%5Bpiklib8%5D.iso" || echo "Already downloaded"
"$COMMON_SCRIPTS_DIR/iso-to-zip.sh" "$CACHE_DIR/RiSP.iso" "$TARGET_ZIP"
