#!/bin/sh

# Log versions info for all langs and tools installed
/opt/swagger-codegen/bin/info.sh
/opt/swaggy-c/bin/info.sh

# Clean up stage directory
rm -rf /tmp/packer-swaggy-c/
