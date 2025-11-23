#!/bin/bash
set -e

wget -nc -O "$CACHE_DIR/RiKwA.iso" "https://iso.zagrajwreksia.pl/RiKwA/Reksio%20i%20Kretes%20w%20Akcji.iso" || echo "Already downloaded"
"$COMMON_SCRIPTS_DIR/iso-to-zip.sh" "$CACHE_DIR/RiKwA.iso" "$TARGET_ZIP"
