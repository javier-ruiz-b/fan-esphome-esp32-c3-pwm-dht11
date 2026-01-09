#!/bin/bash
set -euo pipefail

SECRETS_FILE=secrets.txt

while read -r line; do
    key=$(echo "$line" | cut -d= -f1)
    value=$(echo "$line" | cut -d= -f2)
    sed -i "s|{{$key}}|$value|g" "$1"
done < "$SECRETS_FILE"