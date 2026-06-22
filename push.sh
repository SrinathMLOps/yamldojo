#!/usr/bin/env bash
# Usage: ./push.sh https://github.com/<you>/<repo>.git
set -e

if [ -z "$1" ]; then
  echo "Usage: ./push.sh <your-github-repo-url>"
  echo "Example: ./push.sh https://github.com/yourname/yaml-dojo.git"
  echo ""
  echo "Create an empty repo on github.com first (no README/.gitignore),"
  echo "then copy its URL and pass it here."
  exit 1
fi

REPO_URL="$1"

if [ ! -d ".git" ]; then
  echo "Initializing git repo..."
  git init
fi

git add .
git commit -m "Add YAML Dojo practice tool" || echo "(Nothing new to commit — continuing.)"

git remote remove origin 2>/dev/null || true
git remote add origin "$REPO_URL"
git branch -M main
git push -u origin main

echo ""
echo "Pushed! Now go to your repo on GitHub:"
echo "  Settings → Pages → Source → Deploy from a branch → main / (root) → Save"
echo "Your practice bench will be live at the URL shown there in a minute or two."
