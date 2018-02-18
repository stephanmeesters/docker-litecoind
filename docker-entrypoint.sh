#!/bin/sh
set -e

litecoind_setup.sh

echo "################################################"
echo "# Configuration used: /litecoin/litecoin.conf  #"
echo "################################################"
echo ""
cat /litecoin/litecoin.conf
echo ""
echo "################################################"

exec litecoin-cli -datadir=/litecoin -conf=/litecoin/litecoin.conf -printtoconsole "$@"
