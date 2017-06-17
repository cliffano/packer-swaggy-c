#!/bin/sh
set -o nounset
set -o errexit

echo "bash version: $(bash --version)"

# display all languages info
./*-info.sh
