#!/bin/sh
set -o nounset
set -o errexit

source /root/.sdkman/bin/sdkman-init.sh

echo "****************************************"
echo "* Clojure info"
echo "****************************************"
echo "leiningen version: $(sdk list leiningen)"
