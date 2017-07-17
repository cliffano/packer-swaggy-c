#!/bin/sh
set -o nounset
set -o errexit

source /root/.sdkman/bin/sdkman-init.sh

echo "****************************************"
echo "* Kotlin info"
echo "****************************************"
echo "kotlin version: $(sdk list kotlin)"
