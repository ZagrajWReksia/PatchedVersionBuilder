#!/bin/bash
set -e

"$COMMON_SCRIPTS_DIR/apply-engine-patch.sh" "PIKLIB8.dll" "./files/RiU_Piklib8_no-CD.patch"
