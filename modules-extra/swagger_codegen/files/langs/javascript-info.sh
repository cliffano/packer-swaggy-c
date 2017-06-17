#!/bin/sh
set -o nounset
set -o errexit

echo "node version: $(node --version)"
echo "npm version: $(npm --version)"
