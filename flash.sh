#!/bin/bash
[ -n "$VIRTUAL_ENV" ] || . .venv/Scripts/activate
set -euo pipefail

./create-yaml.sh
esphome run esp32c3_pwm.yaml