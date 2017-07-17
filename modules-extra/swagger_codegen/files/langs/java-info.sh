#!/bin/sh
set -o nounset
set -o errexit

source /root/.sdkman/bin/sdkman-init.sh

echo "****************************************"
echo "* Java info"
echo "****************************************"
echo "java version: $(java -version)"
echo "maven version: $(mvn -version)"
echo "sdk version: $(sdk version)"
