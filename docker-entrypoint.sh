#!/bin/sh
set -e

# Run database migrations if needed
if [ "$RUN_MIGRATIONS" = "true" ]; then
  echo "Running database migrations..."
  pnpm run migrate
fi

exec "$@"