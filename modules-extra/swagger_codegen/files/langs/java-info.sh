#!/bin/sh
set -o errexit

# shellcheck disable=SC1091
. /root/.sdkman/bin/sdkman-init.sh

echo "****************************************"
echo "* Java info"
echo "****************************************"
echo "java version: $(java -version)"
echo "maven version: $(mvn -version)"
echo "sdk version: $(sdk version)"
