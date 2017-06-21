#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Java info"
echo "****************************************"
echo "java version: $(java -version)"
echo "maven version: $(mvn -version)"
