#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <RiSP/RiU/RiC/RiWC/RiKN/RiKwA>"
    exit 1
fi

SCRIPTS_DIR=$(realpath "./scripts/$1")
TMP_DIR=$(realpath -m "./build/tmp/")
CACHE_DIR=$(realpath -m "./build/cache/")
DIST_DIR=$(realpath -m "./build/dist/")
COMMON_DIR=$(realpath -m "./common/")
COMMON_SCRIPTS_DIR=$(realpath -m "./scripts/common/")
TARGET_ZIP="$TMP_DIR/$1.zip"

rm -rf "$TMP_DIR"
mkdir -p "$TMP_DIR"
mkdir -p "$CACHE_DIR"

for script in $(ls "$SCRIPTS_DIR" | sort -n); do
    script="$SCRIPTS_DIR/$script"
    if [[ -f "$script" && -x "$script" ]]; then
        script_dir="$(dirname "$script")"
        script_name="$(basename "$script")"

        echo "=== Running $script_name ==="

        cd "$script_dir" || { echo "Failed to cd into $script_dir"; exit 1; }
        export SCRIPTS_DIR
        export TMP_DIR
        export CACHE_DIR
        export COMMON_DIR
        export COMMON_SCRIPTS_DIR
        export TARGET_ZIP

        ./"$script_name"
        status=$?
        if [[ $status -eq 1 ]]; then
            echo "$script_name exited with 1, stopping script."
            exit 1
        fi
    fi
done

files=$(unzip -Z1 "$TARGET_ZIP")
lowercase=$(echo "$files" | tr '[:upper:]' '[:lower:]')
dupes=$(echo "$lowercase" | sort | uniq -d)
if [[ -n "$dupes" ]]; then
    echo "Case-insensitive conflicts"
    echo
    echo "$dupes"
    echo
    echo "Conflicting original paths:"
    for d in $dupes; do
        echo "$files" | grep -i "^$d$"
        echo
    done
    exit 1
fi

mkdir -p "$DIST_DIR"
cp "$TARGET_ZIP" "$DIST_DIR/$1-Patched.zip"
rm -rf "$TMP_DIR"
