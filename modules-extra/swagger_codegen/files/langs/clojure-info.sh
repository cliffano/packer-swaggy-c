#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Clojure info"
echo "****************************************"
echo "leiningen version: $(sdk list leiningen)"
