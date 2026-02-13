#!/usr/bin/env bash
set -euo pipefail

FILES=$(find examples/counterexamples -type f -name "*.md")

for f in $FILES; do
  grep -q "Counterexample Candidate" "$f"
  grep -q "Failure Mode" "$f"
  grep -q "Resolution" "$f"
done
