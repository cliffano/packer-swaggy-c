#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Clojure info"
echo "****************************************"
echo "leinengen version: $(lein --version)"
