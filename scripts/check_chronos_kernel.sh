#!/usr/bin/env bash
set -euo pipefail

echo "[chronos] files present:"
test -f docs/chronos/CHRONOS_KERNEL.md
test -f tex/chronos/chronos-kernel.tex
test -f lean/Chronos/Kernel.lean
echo "OK"
