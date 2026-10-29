#!/usr/bin/env bash
# Usage: ./push_to_github.sh https://github.com/<you>/<repo>.git
set -euo pipefail
REMOTE="${1:?Pass your GitHub repo URL}"
git init
git lfs install || true
git add .
git commit -m "Initial commit: RAR universality research"
git branch -M main
git remote add origin "$REMOTE"
git push -u origin main
