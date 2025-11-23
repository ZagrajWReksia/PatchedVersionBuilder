#!/bin/bash
set -e

zip -d "$TARGET_ZIP" "DirectX/*" "am.url" "Autorun.exe" "AUTORUN.INF" "GlobalUninst.exe" "install.bmp" "install.ini" "setup.exe" "Uninstall.exe"
