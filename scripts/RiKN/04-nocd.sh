#!/bin/bash
set -e

unzip -j "$TARGET_ZIP" bloomoodll.dll -d "$TMP_DIR"
"$COMMON_SCRIPTS_DIR/apply-bin-patch.py" "$TMP_DIR/bloomoodll.dll" "./files/RiKN_bloomoodll_no-CD.patch"
zip -j "$TARGET_ZIP" "$TMP_DIR/bloomoodll.dll"
