#!/bin/bash

TORRUST_TRACKER_USER_UID=${TORRUST_TRACKER_USER_UID:-1000}
TORRUST_TRACKER_RUN_AS_USER=${TORRUST_TRACKER_RUN_AS_USER:-appuser}

echo "Building docker image ..."
echo "TORRUST_TRACKER_USER_UID: $TORRUST_TRACKER_USER_UID"
echo "TORRUST_TRACKER_RUN_AS_USER: $TORRUST_TRACKER_RUN_AS_USER"

docker build \
    --build-arg UID="$TORRUST_TRACKER_USER_UID" \
    --build-arg RUN_AS_USER="$TORRUST_TRACKER_RUN_AS_USER" \
    -t torrust-tracker .
