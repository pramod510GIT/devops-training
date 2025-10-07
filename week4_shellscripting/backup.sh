
#!/usr/bin/env bash
set -euo pipefail
if [ $# -ge 1 ]; then SRC="$1"; else read -p "Enter full path of file to backup: " SRC; fi
if [ ! -f "$SRC" ]; then echo "Error: source file '$SRC' does not exist." >&2; exit 2; fi
DEST_DIR="/backup"
if [ ! -d "$DEST_DIR" ]; then
  if mkdir -p "$DEST_DIR" 2>/dev/null; then echo "Created $DEST_DIR"; else DEST_DIR="./backup"; mkdir -p "$DEST_DIR"; echo "Using local backup dir $DEST_DIR"; fi
fi
TIMESTAMP=$(date +"%Y-%m-%d_%H%M%S")
BASENAME=$(basename "$SRC")
DEST="${DEST_DIR}/${BASENAME}_${TIMESTAMP}"
cp -p "$SRC" "$DEST"
echo "Backed up '$SRC' → '$DEST'"
