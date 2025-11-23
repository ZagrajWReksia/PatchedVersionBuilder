#!/bin/bash
set -e

zip -d "$TARGET_ZIP" "DirectX/*" "am.url" "install.bmp" "INSTALL.INI" "Uninstall.exe" "Thumbs.db" "setup.exe" "GlobalUninst.exe" "Autorun.exe" "AUTORUN.INF"