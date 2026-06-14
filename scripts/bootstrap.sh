#!/usr/bin/env bash

set -euo pipefail

REPO_URL="https://github.com/Sonic2607/ai-dev-rules.git"

TMP_DIR=$(mktemp -d)

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

echo "Installing AI rules..."

git clone --depth 1 "$REPO_URL" "$TMP_DIR"

rm -rf .cursor
cp -r "$TMP_DIR/cursor" .cursor

echo ""
echo "Done."
echo "Installed:"
echo "  .cursor/rules"
echo "  .cursor/skills"
echo ""
