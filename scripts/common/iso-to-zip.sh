#!/bin/bash
set -e

UNPACK_DIR=$(mktemp -d -t ci-XXXXXXXXXX)
SRC="$1"
DST="$2"

"$COMMON_SCRIPTS_DIR/unpack-iso.sh" "$SRC" "$UNPACK_DIR"
(
  cd "$UNPACK_DIR" || exit
  zip -r "$DST" "."
)

rm -rf "$UNPACK_DIR"
