#!/bin/bash
set -e

"$COMMON_SCRIPTS_DIR/apply-engine-patch.sh" "BlooMooDLL.dll" "./files/random.patch"
