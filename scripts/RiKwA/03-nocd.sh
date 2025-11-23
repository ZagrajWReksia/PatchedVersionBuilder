#!/bin/bash
set -e

unzip -j "$TARGET_ZIP" BlooMooDLL.dll -d "$TMP_DIR"
"$COMMON_SCRIPTS_DIR/apply-bin-patch.py" "$TMP_DIR/BlooMooDLL.dll" "./files/RiKwA_bloomoodll_no-CD.patch"
zip -j "$TARGET_ZIP" "$TMP_DIR/BlooMooDLL.dll"
