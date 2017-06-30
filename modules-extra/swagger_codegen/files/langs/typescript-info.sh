#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* TypeScript info"
echo "****************************************"
echo "typescript version: $(tsc --version)"
