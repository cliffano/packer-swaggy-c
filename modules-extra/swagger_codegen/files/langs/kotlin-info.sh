#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Kotlin info"
echo "****************************************"
echo "kotlin version: $(sdk list kotlin)"
