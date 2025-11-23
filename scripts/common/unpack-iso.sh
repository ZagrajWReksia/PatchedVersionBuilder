#!/bin/bash

SRC="$1"
DST="$2"

loopback=$(udisksctl loop-setup --file "$SRC" | sed 's/.* \([^ ]*\)\.$/\1/')
mounted=$(udisksctl mount -b "${loopback}" | sed 's/^.* \([^ ]*\)$/\1/')

echo "$loopback $mounted"
cp -r --no-preserve=mode "$mounted/." "$DST"

udisksctl unmount -b "$loopback"
udisksctl loop-delete -b "$loopback"
