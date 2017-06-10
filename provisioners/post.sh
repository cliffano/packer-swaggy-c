#!/bin/sh

# echo "bash version: $(bash --version)"
echo "erlang version: $(erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  -noshell)"
echo "gem version: $(gem --version)"
# echo "ghc version: $(ghc --version)"
echo "go version: $(go version)"
echo "java version: $(java -version)"
echo "mono version: $(mono --version)"
echo "node.js version: $(node --version)"
echo "npm version: $(npm --version)"
echo "perl version: $(perl --version)"
echo "php version: $(php --version)"
echo "python version: $(python --version)"
# echo "typescript version: $(tsc --version)"
echo "ruby version: $(ruby --version)"

rm -rf /tmp/packer-swaggy-c/
