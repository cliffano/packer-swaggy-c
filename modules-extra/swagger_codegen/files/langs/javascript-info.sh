#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* JavaScript info"
echo "****************************************"
echo "node version: $(node --version)"
echo "npm version: $(npm --version)"
