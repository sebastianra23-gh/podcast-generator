#!/bin/bash
echo "================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPIUT_EMAIL}"
git config --global --add safe.diretory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"

git push --set-upstream origin main

echo "================="