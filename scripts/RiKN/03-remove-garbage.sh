#!/bin/bash
set -e

zip -d "$TARGET_ZIP" "microsoft.vc80.crt/*" "am.url" "install.bmp" "install.ini" "microsoft.vc80.crt.manifest" "uninstall.exe"