#!/bin/bash
set -euo pipefail

rsync --archive --human-readable \
  --verbose --no-perms \
  --exclude ".git" \
  --exclude ".gitmodules" \
  --exclude "README.md" \
   . ~
