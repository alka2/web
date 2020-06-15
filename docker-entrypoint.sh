#!/usr/bin/env bash
set -e

if [ "$ENVIRONMENT" == "DEV" ]
then
    cp /app/config/dev.js /app/src/App.js
elif [ "$ENVIRONMENT" == "PROD" ]
then
    cp /app/config/prod.js /app/src/App.js
fi

exec "$@"