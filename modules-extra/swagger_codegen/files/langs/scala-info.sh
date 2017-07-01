#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Scala info"
echo "****************************************"
echo "scala version: $(scala --version)"
echo "sbt version: $(sbt --version)"
echo "gt8 version: $(gt8 --version)"
