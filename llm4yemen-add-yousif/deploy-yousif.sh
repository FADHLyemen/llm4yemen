#!/bin/bash
# LLM4Yemen -- Add Dr. Yousif Alyousifi to teaching team
# Usage: bash deploy-yousif.sh /path/to/repo

REPO=${1:-"/path/to/llm4yemen-repo"}
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "=== LLM4Yemen Team Update ==="

for f in team.html curriculum.html index.html; do
  cp "$SCRIPT_DIR/$f" "$REPO/$f"
  echo "  Copied: $f"
done

cd "$REPO"
git add team.html curriculum.html index.html
git commit -m "Redistribute teaching assignments: Mawari +4A, Yousif +5A, Wail Week 6 only"
git push

echo "=== Done! ==="
