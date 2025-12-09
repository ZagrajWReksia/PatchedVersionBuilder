#!/usr/bin/env bash

show_error() {
    local message="$1"

    if command -v kdialog >/dev/null 2>&1; then
        kdialog --error "$message"
    elif command -v zenity >/dev/null 2>&1; then
        zenity --error --title="Error" --text="$message"
    elif command -v yad >/dev/null 2>&1; then
        yad --error --text="$message"
    elif command -v xmessage >/dev/null 2>&1; then
        xmessage "$message"
    elif command -v notify-send >/dev/null 2>&1; then
        notify-send "Error" "$message"
    else
        echo "ERROR: $message"
    fi
}

if ! command -v wine >/dev/null 2>&1; then
    show_error "Wine is not installed."
    exit 1
fi

files=("ReksioPiraci.exe" "ReksioUfo.exe" "Czarodzieje.exe" "Wehikul.exe" "Nemo.exe" "Rex5.exe")

for file in "${files[@]}"; do
    if [[ -f "$file" ]]; then
        echo "Found: $file"
        WINEDLLOVERRIDES=ddraw=n,b wine "$file"
        exit 0
    fi
done

show_error "Game binary not found."
exit 1
