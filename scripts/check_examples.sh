#!/usr/bin/env bash
set -euo pipefail

FILES=$(find examples -type f -name "*.md")

for f in $FILES; do
  grep -q "Example:" "$f"
  grep -q "Invariant" "$f"
done
