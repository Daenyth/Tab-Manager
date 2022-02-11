#!/usr/bin/env bash

set -ue

if [[ ! -e "$(npm bin)/web-ext" ]]; then
  echo "web-ext not found; installing"
  npm install web-ext
fi
webext="$(npm bin)/web-ext"

# files="css images lib manifest.json popup.html"
# zip -r tab-manager-firefox.xpi $files -x "*.DS_Store" -x "__MACOSX"

"$webext" build --ignore-files secrets "$@"
