#!/bin/bash
# Simple network latency injection for testing
# Usage: ./simulate-latency.sh <interface> <latency-ms>

IFACE=$1
LATENCY=$2

if [[ -z "$IFACE" || -z "$LATENCY" ]]; then
  echo "Usage: $0 <interface> <latency-ms>"
  exit 1
fi

sudo tc qdisc add dev $IFACE root netem delay ${LATENCY}ms
echo "Injected ${LATENCY}ms latency on $IFACE"
