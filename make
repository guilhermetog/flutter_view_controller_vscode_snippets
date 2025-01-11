#!/bin/bash

set -e

VERSION=$(grep -Eo '"version": "[0-9.]+"' package.json | grep -Eo '[0-9.]+')
echo "Publishing version $VERSION"

git add .
git commit -m "chore: release $VERSION"
git push


vsce package
vsce publish $VERSION
