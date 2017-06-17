#!/bin/sh
set -o nounset
set -o errexit

echo "ruby version: $(ruby --version)"
echo "gem version: $(gem --version)"
echo "bundle version: $(bundle --version)"
echo "rspec version: $(rspec --version)"
