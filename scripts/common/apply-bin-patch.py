#!/usr/bin/env python
import argparse

parser = argparse.ArgumentParser(
    description="Apply binary patch",
)

parser.add_argument("binary", type=argparse.FileType("r+b"))
parser.add_argument("patch", type=argparse.FileType("rb"))

args = parser.parse_args()

patch_lines = args.patch.read().splitlines()
for patch_line in patch_lines:
    parts = patch_line.split(b" ")
    target_address = int(parts[0].strip(b':'), 16)
    value = int(parts[1], 16)

    print("Patching byte", hex(target_address), "=", hex(value))
    args.binary.seek(target_address)
    args.binary.write(bytes([value]))
