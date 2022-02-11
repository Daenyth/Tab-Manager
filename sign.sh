#!/usr/bin/env bash

set -ue

if [[ ! -e "$(npm bin)/web-ext" ]]; then
  echo "web-ext not found; installing"
  npm install web-ext
fi
webext="$(npm bin)/web-ext"

source .secrets

"$webext" sign --api-key=$AMO_JWT_ISSUER --api-secret=$AMO_JWT_SECRET "$@"
