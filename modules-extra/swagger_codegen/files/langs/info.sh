#!/bin/sh
set -o nounset
set -o errexit

echo "bash version: $(bash --version)"

# display all languages info
for lang_info in *-info.sh; do
  bash "$lang_info" -H
done
