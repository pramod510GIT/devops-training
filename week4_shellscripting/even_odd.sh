#!/usr/bin/env bash
set -euo pipefail
if [ $# -ge 1 ]; then NUM="$1"; else read -p "Enter an integer: " NUM; fi
if ! [[ "$NUM" =~ ^-?[0-9]+$ ]]; then echo "Error: not an integer" >&2; exit 2; fi
if (( NUM % 2 == 0 )); then echo "$NUM is even"; else echo "$NUM is odd"; fi
