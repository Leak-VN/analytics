#!/bin/sh
set -e

if [ "$1" = 'run' ]; then
      exec /app/bin/plausible start

elif [ "$1" = 'db' ]; then
      sleep 100
      exec /app/createdb.sh
      exec /app/migrate .sh
 else
      exec "$@"

fi

exec "$@"
