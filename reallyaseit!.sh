#!/usr/bin/env bash
set -e

cd shippit

REALLYASE=$(($(tail -1 README.md | sed -E 's/\* Reallyase ([0-9]+).*/\1/') + 1))
NAME=$(curl http://random-name-generator.info/ | grep -E '\w+\s+<li>' | head -1 | sed -E 's/'$'\t''+//g;s/<li>//')
echo "* Reallyase $REALLYASE [$NAME, $(date +%Y.%m.%d-%H:%M:%S)]" >> README.md

git add README.md
git commit -m "Reallyase $REALLYASE"
git tag -a reallyase-$REALLYASE
