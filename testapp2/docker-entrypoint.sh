#!/usr/bin/env bash
set -e

#envsubst
envsubst < config.ini.template > config.ini

exec "$@"
