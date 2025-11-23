#!/bin/bash
set -e

unzip -j "$TARGET_ZIP" PIKLIB8.dll -d "$TMP_DIR"
"$COMMON_SCRIPTS_DIR/apply-bin-patch.py" "$TMP_DIR/PIKLIB8.dll" "./files/RiC_Piklib8_no-CD 2.patch"
zip -j "$TARGET_ZIP" "$TMP_DIR/PIKLIB8.dll"
