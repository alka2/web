#!/usr/bin/env bash
set -e

if [ "$ENVIRONMENT" == "DEV" ]
then
    cp /code/config/dev.js /code/src/App.js
elif [ "$ENVIRONMENT" == "PROD" ]
then
    cp /code/config/prod.js /code/src/App.js
fi

exec "$@"