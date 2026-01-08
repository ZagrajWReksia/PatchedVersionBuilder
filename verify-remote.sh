#!/usr/bin/env bash
set -e

games=("RiSP" "RiU" "RiC" "RiWC" "RiKN" "RiKwA")

for game in "${games[@]}"; do
    url="https://iso.zagrajwreksia.pl/$game/$game-Patched.zip"
    local_file="./build/dist/$game-Patched.zip"

    tmpfile="$(mktemp)"
    trap 'rm -f "$tmpfile"' EXIT

    wget -O "$tmpfile" "$url"

    if ! cmp -s "$tmpfile" "$local_file"; then
        echo "ERROR: File mismatch for $game" >&2
        exit 1
    fi

    rm -f "$tmpfile"
    trap - EXIT
done
