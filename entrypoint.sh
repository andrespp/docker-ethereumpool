#!/bin/bash

# Sets script to fail if any command fails.
set -e


run_ethminer() {
    HASH_RATE=${HASH_RATE:-0.01}
    ETH_ADDRESS=${ETH_ADDRESS:-0x88c6b20032f48d219a5136db6366500cab33c17a}
    RIG_NAME=${RIG_NAME:-localhost}

    ethminer -F http://ethereumpool.co/?miner=$HASH_RATE@$ETH_ADDRESS@$RIG_NAME
}

error() {
    exit 1
}

case "$1" in
    run)
        shift 1
        run_ethminer "$@"
        ;;
    error)
        error
        ;;
    *)
        exec "$@"
esac
