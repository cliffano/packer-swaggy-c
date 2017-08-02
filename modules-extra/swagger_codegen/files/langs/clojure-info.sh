#!/bin/sh
set -o errexit

# shellcheck disable=SC1091
. /root/.sdkman/bin/sdkman-init.sh

echo "****************************************"
echo "* Clojure info"
echo "****************************************"
echo "leiningen version: $(sdk current leiningen)"
