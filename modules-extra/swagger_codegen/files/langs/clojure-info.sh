#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Clojure info"
echo "****************************************"
echo "leinengen version: $(/root/.sdkman/candidates/leiningen/current/bin/lein -version)"
