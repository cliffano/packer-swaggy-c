#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Scala info"
echo "****************************************"
echo "scala version: $(scala -version)"
echo "sbt version: $(sbt sbt-version)"
