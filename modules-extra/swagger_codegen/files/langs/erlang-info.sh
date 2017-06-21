#!/bin/sh
set -o nounset
set -o errexit

echo "****************************************"
echo "* Erlang info"
echo "****************************************"
echo "erlang version: $(erl -eval 'erlang:display(erlang:system_info(otp_release)), halt().'  -noshell)"
