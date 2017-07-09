#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Swift info"
echo "****************************************"
echo "swift version: $(/opt/swagger-codegen/langs/swift-3.1.1-RELEASE-ubuntu16.04/usr/bin/swift -version)"
