#!/bin/bash
set -e

zip -d "$TARGET_ZIP" "directX/*" "am.url" "autorun.inf" "Autorun.exe" "CzaroDemo1.exe" "globalUninst.exe" "install.bmp" "INSTALL.INI" "Uninstall.exe" "Log.log" "setup.exe"
