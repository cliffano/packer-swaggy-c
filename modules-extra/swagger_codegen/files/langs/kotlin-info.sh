#!/bin/sh
set -o errexit

# shellcheck disable=SC1091
. /root/.sdkman/bin/sdkman-init.sh

echo "****************************************"
echo "* Kotlin info"
echo "****************************************"
echo "kotlin version: $(sdk list kotlin)"
