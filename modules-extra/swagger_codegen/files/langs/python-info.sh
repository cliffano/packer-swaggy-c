#!/bin/sh
set -o nounset
set -o errexit

echo "python version: $(python --version)"
echo "pip version: $(pip --version)"
