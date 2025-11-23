#!/bin/bash
set -e

unzip -j "$TARGET_ZIP" PIKLIB8.dll -d "$TMP_DIR"
"$COMMON_SCRIPTS_DIR/apply-bin-patch.py" "$TMP_DIR/PIKLIB8.dll" "./files/RiSP_PIKLIB8_no-CD.patch"
zip -j "$TARGET_ZIP" "$TMP_DIR/PIKLIB8.dll"
