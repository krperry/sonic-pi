#!/bin/bash
set -e # Quit script on error
SCRIPT_DIR="$(dirname "$0")"
cd ${SCRIPT_DIR}
echo "Booting Sonic Pi on Linux..."
TAU_ENABLED=$1 TAU_INTERNAL=$2 TAU_MIDI_ENABLED=$3 TAU_LINK_ENABLED=$4 TAU_IN_PORT=$5 TAU_API_PORT=$6 TAU_SPIDER_PORT=$7 TAU_DAEMON_PORT=$8 _build/"${MIX_ENV:-dev}"/rel/tau/bin/tau start
