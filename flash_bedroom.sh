#!/bin/bash
[ -n "$VIRTUAL_ENV" ] || . .venv/Scripts/activate
set -euo pipefail

output_file="esp32c3_bedroom.yaml"
cp esp32c3_bedroom.template.yaml "$output_file"
./inject_secrets.sh "$output_file"
esphome run "$output_file"