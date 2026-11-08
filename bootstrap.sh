#!/bin/bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

git -C "$repo_dir" submodule update --init --recursive

rsync --archive --human-readable \
  --verbose --no-perms \
  --exclude ".git" \
  --exclude ".gitmodules" \
  --exclude "README.md" \
   "$repo_dir/" ~
