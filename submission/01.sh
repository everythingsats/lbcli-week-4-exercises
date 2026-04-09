#!/bin/bash

CLI="bitcoin-cli -regtest -rpcuser=btcuser -rpcpassword=btcpass"

# Then use $CLI everywhere instead of bitcoin-cli
$CLI loadwallet "btrustwallet" 2>/dev/null || true
$CLI -rpcwallet=btrustwallet getnewaddress "" bech32
