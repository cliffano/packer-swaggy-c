#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Python info"
echo "****************************************"
echo "python version: $(python --version)"
echo "pip version: $(pip --version)"
