#!/bin/bash
set -e

zip -d "$TARGET_ZIP" "DirectX/*" "am.url" "Autorun.exe" "AUTORUN.INF" "install.bmp" "Uninstall.exe" "Log.log" "Microsoft.VC80.CRT/*" "GlobalUninst.exe" "install.ini" "Microsoft.VC80.CRT.manifest" "BlooMoo.log" "R_Czaro.exe" "R_Piraci.exe" "R_UFO.exe" "R_Wehikul.exe" "Reksio_Nemo_demo.exe" "setup.exe"
