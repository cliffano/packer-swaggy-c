#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* PHP info"
echo "****************************************"
echo "php version: $(php --version)"
