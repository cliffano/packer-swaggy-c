#!/bin/sh

cd /opt/swagger-codegen/bin/
./javascript-info.sh
./ruby-info.sh

# echo "bash version: $(bash --version)"
# echo "erlang version: $(erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  -noshell)"
# echo "ghc version: $(ghc --version)"
# echo "go version: $(go version)"
# echo "java version: $(java -version)"
# echo "mono version: $(mono --version)"
# echo "perl version: $(perl --version)"
# echo "php version: $(php --version)"
# echo "python version: $(python --version)"
# echo "typescript version: $(tsc --version)"

echo "swaggy-c version: $(swaggy-c --version)"

rm -rf /tmp/packer-swaggy-c/
