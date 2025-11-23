#!/bin/bash
set -e

zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" "./files/patch-general.zip" "./files/patch-krzemienie.zip" "./files/patch-rabarbark-exit.zip"
