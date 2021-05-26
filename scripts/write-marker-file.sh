#!/usr/bin/env bash

set -euo pipefail

trap 'rm -f "$tmpfile"' EXIT
tmpfile=$(mktemp /var/lib/zincati/admin/strategy/marker_file/.ansible-tmp.XXXXXX)
chmod 0644 "${tmpfile}" 
echo "$1" | jq --raw-input --raw-output '. | tonumber | { allowUntil: . }' > "${tmpfile}"
mv "${tmpfile}" /var/lib/zincati/admin/strategy/marker_file/allowfinalize.json
