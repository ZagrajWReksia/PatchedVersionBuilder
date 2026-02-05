#!/bin/bash
set -e

zipmerge -I "$TARGET_ZIP" "$TARGET_ZIP" ./files/mumionki-patch-alc91.zip
