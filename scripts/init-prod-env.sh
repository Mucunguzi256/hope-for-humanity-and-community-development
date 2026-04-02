#!/usr/bin/env sh
set -eu

SRC=".env.production.example"
DST=".env.production"

if [ ! -f "$SRC" ]; then
  echo "Missing $SRC"
  exit 1
fi

if [ -f "$DST" ]; then
  echo "$DST already exists. Skipping copy."
  exit 0
fi

cp "$SRC" "$DST"

echo "Created $DST from $SRC"
echo "Next: replace all placeholder values (change_me_*) and set real HTTPS URLs."
