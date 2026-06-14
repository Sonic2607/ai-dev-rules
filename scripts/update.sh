#!/usr/bin/env bash

set -euo pipefail

REPO_URL="https://github.com/sonicson26/ai-dev-rules.git"

TMP_DIR=$(mktemp -d)

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

echo "Updating AI rules..."

git clone --depth 1 "$REPO_URL" "$TMP_DIR"

mkdir -p .cursor
rsync -av --delete \
  "$TMP_DIR/cursor/" \
  ".cursor/"

echo "AI rules updated."
