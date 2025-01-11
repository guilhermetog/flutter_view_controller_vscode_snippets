#!/bin/bash

set -e

VERSION=$(grep -Eo '"version": "[0-9.]+"' package.json | grep -Eo '[0-9.]+')
echo "Publishing version $VERSION"

vsce login guilhermetog

vsce package
vsce publish $VERSION


git add .
git commit -m "v$VERSION"
git push
