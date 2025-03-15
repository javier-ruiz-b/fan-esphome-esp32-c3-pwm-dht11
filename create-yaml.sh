#!/bin/bash
set -euo pipefail

SECRETS_FILE=secrets.txt

cp -f esp32c3_pwm.yaml.template esp32c3_pwm.yaml

while read -r line; do
    key=$(echo "$line" | cut -d= -f1)
    value=$(echo "$line" | cut -d= -f2)
    sed -i "s|{{$key}}|$value|g" esp32c3_pwm.yaml
done < "$SECRETS_FILE"