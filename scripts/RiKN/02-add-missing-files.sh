#!/bin/bash
set -e

zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" ./files/missing-installer-files.zip
