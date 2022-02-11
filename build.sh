#!/usr/bin/env bash

files="css images lib manifest.json popup.html"
zip -r tab-manager-firefox.xpi $files -x "*.DS_Store" -x "__MACOSX"

