#!/bin/sh
set -o nounset
set -o errexit

echo "java version: $(java -version)"
echo "maven version: $(mvn -version)"
