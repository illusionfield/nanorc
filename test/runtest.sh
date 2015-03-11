#!/usr/bin/env bash

export PROJ_HOME=$(git rev-parse --show-toplevel)
source $PROJ_HOME/test/functions.sh

echo "Linking nanorc"
_nano_init_rc

echo "Test nano"
_nano_run_sample
